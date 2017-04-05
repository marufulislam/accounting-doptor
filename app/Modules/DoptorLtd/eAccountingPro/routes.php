<?php
/*
=================================================
Module Name     :   eAccountingPro
Module Version  :   v1.0
Compatible CMS  :   v1.2
Author          :   Rony Debnath, Maruf-Ul-Islam, Rohit Protik
Site            :   http://doptor.com
Description     :   Expert Accounting with product Inventory.
===================================================
*/

/* ROUTE GROUPS FOR BACKEND */

Route::group(array('prefix' => 'backend/modules/eaccounting_pro', 'middleware' => array('auth', 'auth.backend', 'auth.permissions', 'auth.pw_6_months')), function () {

    Route::get('/', [
        'as' => 'backend.modules.doptorltd.eaccounting.pro',
        'uses' => 'Modules\DoptorLtd\eAccountingPro\Controllers\DashboardController@getIndex'
    ]);
    
    
});

/* ROUTE GROUPS FOR BACKEND END */


/* ROUTE GROUPS FOR Public */
Route::group(array('prefix' => 'modules/eaccounting_pro', 'middleware' => array('auth', 'auth', 'auth.permissions', 'auth.pw_6_months')), function () {

    
});
/* ROUTE GROUPS FOR Public END*/

/*ROUTE GROUPS FOR ADMIN START*/
Route::group(['prefix' => 'admin/modules/eaccounting_pro',  'middleware' => array('auth', 'auth', 'auth.permissions', 'auth.pw_6_months')], function(){
    

    Route::get('/', [
        'as' => 'admin.modules.doptorltd.eaccounting.pro.main',
        'uses' => 'Modules\DoptorLtd\eAccountingPro\Controllers\DashboardController@getIndex'
    ]);

    

});

/*ROUTE GROUP FOR ADMIN END*/
