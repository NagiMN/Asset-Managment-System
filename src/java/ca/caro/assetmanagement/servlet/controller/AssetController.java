/*
 * Copyright (C) 2022 CARO Analytical Services
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package ca.caro.assetmanagement.servlet.controller;

import ca.caro.assetmanagement.database.Account;
import ca.caro.assetmanagement.database.AssetCategoryHandler;
import ca.caro.assetmanagement.database.AssetHandler;
import ca.caro.assetmanagement.database.DepreciationHandler;
import ca.caro.assetmanagement.database.ImportHandler;
import ca.caro.assetmanagement.database.LogHandler;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * <b>Asset Controller Class</b>
 * <p>Class that handles interaction of the <b>asset.jsp</b> web page to the MS Server. 
 * Also handles action sent from the <b>asset.jsp</b> web page if applicable.
 * Contains methods for handling the Users Related tables with operations such as adding, editing, and disabling users
 * as well as methods for getting user info.
 * Most methods are auto-generated from being a generated servlet, additional methods created are meant to help the servlet</p>
 * 
 * @author Neil Gilbert (761581)
 * @version 1.0
 */
@WebServlet(name = "assetController", urlPatterns = {"/assetController"})
public class AssetController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.Forward to different page mainly base on action attribute
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        int clearanceLv=-1;
        if (session.getAttribute("clearanceLv")!=null){
          clearanceLv=Integer.parseInt(session.getAttribute("clearanceLv").toString());
        }
//System.out.println("this is the logged in id:"+session.getAttribute("userId"));
        if (session.getAttribute("loggedIn") != null) {
            if (request.getParameter("action") != null) {
                //System.out.println(request.getParameter("action"));
                AssetHandler assetH = new AssetHandler();
                switch (request.getParameter("action")) {
                    case "viewCategories":
                        sendToAssetCategory(request, response, "");
                        break;
                    case "viewAssets":
                        sendToAssets(request, response, "");
                        break;
                    case "importFile":
                        int num_of_import=0;
                        //System.out.println(request.getParameter("json_parse"));
                        // System.out.println(request.getParameter("before method"));
                        try {
                            if (request.getParameter("json_parse")!=null){
                                num_of_import = ImportHandler.json_to_object(request.getParameter("json_parse"));
                                request.setAttribute("message", "Import success, "+num_of_import+" asset imported to database." );
                                LogHandler.recordLog(request, "[IMPORTASSET_SUCCESS] User(" + session.getAttribute("userId") + ") succesfully imported asset.");
  
                            }else{
                                request.setAttribute("message", "Import failed" );
                                LogHandler.recordLog(request, "[IMPORTASSET_FAILED] User(" + session.getAttribute("userId") + ") failed to import asset.");
                            
                            }
                        } catch (InterruptedException ex) {
                            sendToAssets(request, response, "");
                        }
                        sendToAssets(request, response, "");
                    
                        break;

                    case "addAsset":
                        //System.out.println("initial point of add asset");
                        String[] addAssetParams
                                = {
                                    request.getParameter("asset_id"),
                                    request.getParameter("asset_name"),
                                    request.getParameter("asset_desc").equals("")?"No Data":request.getParameter("asset_desc"),
                                    request.getParameter("photo_link").equals("")?"No Data":request.getParameter("photo_link"),
                                    request.getParameter("asset_category").equals("")?"No Data":request.getParameter("asset_category"),
                                    request.getParameter("purchase_date"),
                                    request.getParameter("cost"),
                                    request.getParameter("location_id"),
                                    request.getParameter("added_by"),
                                    request.getParameter("dimension").equals("")?"No Data":request.getParameter("dimension"),
                                    request.getParameter("IP").equals("")?"No Data": request.getParameter("IP"),
                                    request.getParameter("MAC").equals("")?"No Data":request.getParameter("MAC"),
                                    request.getParameter("serial_number").equals("")?"No Data":request.getParameter("serial_number"),
                                    request.getParameter("hostname").equals("")?"No Data":request.getParameter("hostname"),
                                    request.getParameter("service_tag").equals("")?"No Data":request.getParameter("service_tag"),
                                    request.getParameter("comment_on_asset").equals("")?"No Data":request.getParameter("comment_on_asset"),
                                    request.getParameter("brand_id"),
                                    request.getParameter("vendor_id"),
                                    request.getParameter("OS").equals("")?"No Data":request.getParameter("OS"),
                                    request.getParameter("depreciated_value"),
                                    request.getParameter("deprec_info_id")
                                };
                        for (int i=0;i<addAssetParams.length;i++){
                            //System.out.println(i+": "+addAssetParams[i]);
                        }
                            String[] assigned_toParams = {request.getParameter("assigned_to_id"),request.getParameter("asset_id")};
                        if (assetH.addAsset(addAssetParams)) {
                            LogHandler.recordLog(request, "[ADDASSET_SUCCESS] User(" + session.getAttribute("userId") + ") succesfully added asset(" + addAssetParams[0] + ").");
                            request.setAttribute("message", "Asset successfully added!Not Assiged to anyone");
                            if(assetH.addAssigned_to(assigned_toParams)){
                            LogHandler.recordLog(request, "[ADDASSET_SUCCESS] User(" + session.getAttribute("userId") + ") assigned asset(" + addAssetParams[0] + ") to User("+request.getParameter("assigned_to_id")+")");
                            request.setAttribute("message", "Asset successfully added!Assigned to someone");
                            }
                        } else {
                            LogHandler.recordLog(request, "[ADDASSET_FAILED] User(" + session.getAttribute("userId") + ") failed to add asset.");
                            request.setAttribute("message", "Adding asset failed!");
                        }
                        sendToAssets(request, response, "");
                        break;
                    case "editAsset":
                        if (clearanceLv==0){
                        String[] editAssetParams
                                = {
                                    request.getParameter("edit_asset_id"),
                                    request.getParameter("edit_asset_name"),
                                    request.getParameter("edit_asset_desc"),
                                    request.getParameter("edit_photo_link"),
                                    request.getParameter("edit_asset_category"),
                                    request.getParameter("edit_purchase_date"),
                                    request.getParameter("edit_cost"),
                                    request.getParameter("edit_location_id"),
                                    request.getParameter("edit_added_by"),
                                    request.getParameter("edit_dimension"),
                                    request.getParameter("edit_IP"),
                                    request.getParameter("edit_MAC"),
                                    request.getParameter("edit_serial_number"),
                                    request.getParameter("edit_hostname"),
                                    request.getParameter("edit_service_tag"),
                                    request.getParameter("edit_comment_on_asset"),
                                    request.getParameter("edit_brand_id"),
                                    request.getParameter("edit_vendor_id"),
                                    request.getParameter("edit_depreciated_value"),
                                    request.getParameter("edit_assigned_to_NEW_personel_id"),
                                    request.getParameter("edit_assigned_to_OLD_personel_id")

                                };
                        for (int i = 0; i < editAssetParams.length; i++) {
                            //System.out.println(i + "    " + editAssetParams[i]);
                        }
                        if (assetH.editAsset(editAssetParams)) {
                            LogHandler.recordLog(request, "[EDITASSET_SUCCESS] User(" + session.getAttribute("userId") + ") succesfully edited asset(" + editAssetParams[0] + ").");
                            request.setAttribute("message", "Asset successfully edited!");
                        } else {
                            LogHandler.recordLog(request, "[EDITASSET_FAILED] User(" + session.getAttribute("userId") + ") failed to edited asset.");
                            request.setAttribute("message", "Editing asset failed!");
                        }
                        sendToAssets(request, response, "");
                        }
                        break;

                    case "deleteAsset":
                        if (clearanceLv==0){
                        if (!request.getParameter("del_assigned_to_id").equals("No Data") ){
                            assetH.deleteAssigned_to(request.getParameter("del_assigned_to_id"),request.getParameter("del_asset_id"));
                        }
                        
                        if (assetH.deleteAsset(request.getParameter("del_asset_id"))) {
                            LogHandler.recordLog(request, "[DELETEASSET_SUCCESS] User(" + session.getAttribute("userId") + ") succesfully deleted asset(" + request.getParameter("del_asset_id") + ").");
                            request.setAttribute("message", "Asset successfully deleted!");
                        } else {
                            LogHandler.recordLog(request, "[DELETEASSET_FAILED] User(" + session.getAttribute("userId") + ") failed to delete.");
                            request.setAttribute("message", "Deleting asset failed!");
                        }
                        sendToAssets(request, response, "");
                        break;
                        }
                    case "archive":
                        if (clearanceLv==0){
                            ArrayList<String> archiveParams = assetH.getArchiveParams(request.getParameter("del_asset_id"));
                            archiveParams.add(request.getParameter("sold_price"));
                            if (assetH.addToArchive(archiveParams)){
                                LogHandler.recordLog(request, "[ARCHIVEASSET_SUCCESS] User(" + session.getAttribute("userId") + ") succesfully archived asset(" + request.getParameter("del_asset_id") + ").");
                                request.setAttribute("archivemessage", "Asset successfully archived!");
                            } else{
                                LogHandler.recordLog(request, "[ARCHIVEASSET_FAILED] User(" + session.getAttribute("userId") + ") failed to archive asset(" + request.getParameter("del_asset_id") + ").");
                                request.setAttribute("archivemessage", "Archiving asset failed!");
                            }
                            if (!request.getParameter("del_assigned_to_id").equals("No Data") ){
                                assetH.deleteAssigned_to(request.getParameter("del_assigned_to_id"),request.getParameter("del_asset_id"));
                            }
                            if (assetH.deleteAsset(request.getParameter("del_asset_id"))) {
                                LogHandler.recordLog(request, "[DELETEASSET_SUCCESS] User(" + session.getAttribute("userId") + ") succesfully deleted asset(" + request.getParameter("del_asset_id") + ").");
                                request.setAttribute("message", "Asset successfully deleted!");
                            } else {
                                LogHandler.recordLog(request, "[DELETEASSET_FAILED] User(" + session.getAttribute("userId") + ") failed to delete.");
                                request.setAttribute("message", "Deleting asset failed!");
                            }
                            sendToAssets(request, response, "");
                            break;
                        }
                        
                    default:
                        sendToAssets(request, response, "");
                }
            } else {
                sendToAssets(request, response, "");
            }
        } else {
            sendToLogin(request, response, "");
        }
    }

    /**
     *  This method is used to help servlet send the user to the asset page with the needed parameters. 
     *  Retrieves all data needed by the asset page to display required asset information
     * 
     *  @param request HttpServletRequest servlet request
     *  @param response HttpServletResponse servlet response
     *  @param message String servlet Message of the message box
     *  @throws ServletException if a servlet-specific error occurs
     *  @throws IOException if an I/O error occurs
     */
    private void sendToAssets(HttpServletRequest request, HttpServletResponse response, String message) throws IOException, ServletException {
        AssetHandler assetHandler = new AssetHandler();

        String assetList = "";
        String assetCategoryList = "";
        String assetBrandList = "";
        String assetVendorList = "";
        String LocationList = "";
        String userList = "";   //personel_id,username,firstname,lastname, email
        String deprecList = "";
        
        //new get asset with assigned to
        for (String asset : assetHandler.getAssets_with_assigned_to()) {
            if (!asset.equals(assetHandler.getAssets_with_assigned_to().get(0))) {
                assetList += ",";
            }

            assetList += asset;
        }
        //System.out.println(assetList);

        for (String assetCategory : assetHandler.getAssetCategories()) {
            if (!assetCategory.equals(assetHandler.getAssetCategories().get(0))) {
                assetCategoryList += ",";
            }

            assetCategoryList += assetCategory;
        }

        for (String assetBrand : assetHandler.getAssetBrands()) {
            if (!assetBrand.equals(assetHandler.getAssetBrands().get(0))) {
                assetBrandList += ",";
            }

            assetBrandList += assetBrand;
        }
        for (String assetVendor : assetHandler.getAssetVendors()) {
            if (!assetVendor.equals(assetHandler.getAssetVendors().get(0))) {
                assetVendorList += ",";
            }

            assetVendorList += assetVendor;
        }

        for (String Location : assetHandler.getLocations()) {
            if (!Location.equals(assetHandler.getLocations().get(0))) {
                LocationList += ",";
            }

            LocationList += Location;
           // System.out.println(LocationList + "TEST");
        }
        
        for (String user : assetHandler.getActiveUsers()) {
            if (!user.equals(assetHandler.getActiveUsers().get(0))) {
                userList += ",";
            }
            userList += user;
        }
        
        DepreciationHandler deprecH = new DepreciationHandler();
        for (String deprec : deprecH.getDepreciations()) {
            if (!deprec.equals(deprecH.getDepreciations().get(0))) {
                deprecList += ",";
            }
            deprecList += deprec;
        }
        request.setAttribute("assets", assetList);
        request.setAttribute("assetCategories", assetCategoryList);
        request.setAttribute("assetBrands", assetBrandList);
        request.setAttribute("assetVendors", assetVendorList);
        request.setAttribute("Locations", LocationList);
        request.setAttribute("users", userList);
        request.setAttribute("deprecs", deprecList);
        HttpSession session = request.getSession();
        session.setAttribute("userEmail", Account.getUserEmail((String)session.getAttribute("userId")));
        getServletContext().getRequestDispatcher("/WEB-INF/asset.jsp").forward(request, response);
    }

    /**
     *  This method is used to help servlet send the user to the login page.
     * 
     *  @param request HttpServletRequest servlet request
     *  @param response HttpServletResponse servlet response
     *  @param message String servlet Message of the message box
     *  @throws ServletException if a servlet-specific error occurs
     *  @throws IOException if an I/O error occurs
     */
    private void sendToLogin(HttpServletRequest request, HttpServletResponse response, String message) throws IOException, ServletException {
        getServletContext().getRequestDispatcher("/authenticateUser").forward(request, response);
    }

    /**
     *  This method is used to help servlet send the user to the asset category page.
     *  Retrieves all data needed by the asset category page to display required asset category information
     * 
     *  @param request HttpServletRequest servlet request
     *  @param response HttpServletResponse servlet response
     *  @param message String servlet Message of the message box
     *  @throws ServletException if a servlet-specific error occurs
     *  @throws IOException if an I/O error occurs
     */
    private void sendToAssetCategory(HttpServletRequest request, HttpServletResponse response, String message) throws IOException, ServletException {
        AssetCategoryHandler assetCH = new AssetCategoryHandler();
        HttpSession session = request.getSession();
        String assetCategoryList = "";
        int numOfCategory=0;
        numOfCategory = assetCH.getNumOfCategory();
        
        for (String assetCategory : assetCH.getAssetCategories_with_count()) {
            if (!assetCategory.equals(assetCH.getAssetCategories_with_count().get(0))) {
                assetCategoryList += ",";
            }
            assetCategoryList += assetCategory;
        }
        
        //System.out.println(assetCategoryList);
        request.setAttribute("assetCategories", assetCategoryList);
        session.setAttribute("numOfCategory", numOfCategory);
        getServletContext().getRequestDispatcher("/WEB-INF/asset_category_page.jsp").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
