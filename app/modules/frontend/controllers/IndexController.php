<?php

namespace App\Frontend\Controllers;

class IndexController extends ControllerBase
{

    public function indexAction()
    {

    }

    public function threeAction()
    {
        $this->view->setLayout('empty');

        //return false;
    }
}

