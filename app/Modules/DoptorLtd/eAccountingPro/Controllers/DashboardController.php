<?php
/*
=================================================
Module Name     :   eAccountingPro
Module Version  :   v1.0
Compatible CMS  :   v1.2
Author          :   Rony Debnath, Maruf Ul Islam, Rohit Protik
Site            :   http://doptor.com
Description     :   Expert Accounting with product Inventory.
===================================================
*/

namespace Modules\DoptorLtd\eAccountingPro\Controllers;


use App\Http\Requests;
use Illuminate\Http\Request;
use User;
//use Modules\DoptorLtd\eAccountingPro\Models\MdlHrLeave;
use Carbon\Carbon;
use View;

class DashboardController extends AccountingBaseController
{
    /*
    *constructor function
    */
    public function __construct() {
        parent::__construct();
    }


    /*
        * Index Method
    */
    public function getIndex()
    {

        $title = "eAccounting Pro::Dashboard";

        $this->layout->title = $title;
        $this->layout->content = view("{$this->module_alias}::dashboard.{$this->type}.dashboard", compact(['title']));
    }

   

    
}
