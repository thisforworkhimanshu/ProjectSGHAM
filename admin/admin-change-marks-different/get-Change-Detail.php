<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<?php
session_start();
if(!isset($_SESSION['aid'])){
    header("Location: ../../index.php");
}
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../../bootstrap-4.1.1-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="../../css/style.css"/>
        <script src="../../node_modules/jquery/dist/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <?php
                require_once '../../master-layout/admin/master-page-admin.php';
            ?>
            
            <div class="badge-light" style="margin-top: 1%;">
                <div class="text-center">
                    <h5>Change Marks</h5>
                </div>
            </div>
            <form action="get-Change-Detail.php" method="post">
                <div class="row">
                    <div class="col-4 form-group">
                        <select name="semester" id="semester" class="form-control">
                            <option value="">--Select Semester--</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                        </select>
                    </div>
                    <div class="col-4 form-group">
                        <select name="examtype" id="examtype" class="form-control">
                            <option value="">--Select Exam Type--</option>
                            <option value="m">Mid Semester Exam</option>
                            <option value="r">Remedial Exam for Mid</option>
                            <option value="v">Internal Viva</option>
                        </select>
                    </div>
                    <div class="col-4 form-group">
                        <input type="text" id="enrolment" name="enrolment" class="form-control" placeholder="Enrolment Number"/>
                    </div>
                </div>

                <div class="form-group row">
                    <div class="col-4"></div>
                    <div class="col-4">
                        <input type="submit" id="btnSubmit" name="btnSubmit" class="btn btn-primary form-control"/>
                    </div>
                </div>
            </form>
            <div class="showTable">
                <?php
                    if(isset($_POST['enrolment'])&&isset($_POST['semester'])&&isset($_POST['examtype'])){
                        
                        $semester = $_POST['semester'];
                        $examtype = $_POST['examtype'];
                        $enrolment = $_POST['enrolment'];
                        
                        $_SESSION['semester_change'] = $semester;
                        $_SESSION['examtype_change'] = $examtype;
                        $_SESSION['enrolment_change'] = $enrolment;
                        
                        require_once '../../Connection.php';
                        $connection = new Connection();
                        $conn = $connection->createConnection("college");
                        $dept_id = $_SESSION['a_dept_id'];
                        
                        $sqlsubject = "select subject_code,subject_name from subject where dept_id = $dept_id and semester = $semester";
                        $resultSubject = mysqli_query($conn, $sqlsubject);
                        if(mysqli_num_rows($resultSubject)>0){
                            
                            ?>
                <form action="change-my-marks.php" method="post">
                    <div class="row">
                        <div class="col-3"></div>
                        <div class="col-6">
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <tr>
                                        <th>Subject Code</th>
                                        <th>Subject Name</th>
                                        <th>Marks</th>
                                    </tr>
                                            <?php

                                        while($rowSubject = mysqli_fetch_assoc($resultSubject)){
                                            $subject_code = $rowSubject['subject_code'];
                                            $subject_name = $rowSubject['subject_name'];

                                            ?>
                                    <tr>
                                        <td><?php echo $subject_code?></td>
                                        <td><?php echo $subject_name?></td>
                                        <td>
                                            <?php
                                            if($examtype==="m"){
                                                $sqlGetMark = "select ".$subject_code."_m as mid from sem".$semester."_".$dept_id." where enrolment = $enrolment";
                                                $resultMark = mysqli_query($conn, $sqlGetMark);
                                                if(mysqli_num_rows($resultMark)>0){
                                                    $rowmark = mysqli_fetch_assoc($resultMark);
                                                    ?>
                                            <input type="text" id="<?php echo $subject_code?>" name="<?php echo $subject_code?>" value="<?php echo $rowmark['mid']?>"/>
                                                        <?php
                                                }else{
                                                    echo 'N.A.';
                                                }
                                            }else if($examtype==="v"){
                                                $sqlGetMark = "select ".$subject_code."_v as viva from sem".$semester."_".$dept_id." where enrolment = $enrolment";
                                                $resultMark = mysqli_query($conn, $sqlGetMark);
                                                if(mysqli_num_rows($resultMark)>0){
                                                    $rowmark = mysqli_fetch_assoc($resultMark);
                                                    ?>
                                            <input type="text" id="<?php echo $subject_code?>" name="<?php echo $subject_code?>" value="<?php echo $rowmark['viva']?>"/>
                                                        <?php
                                                }else{
                                                    echo 'N.A.';
                                                }
                                            }else if($examtype==="r"){
                                                $sqlGetMark = "select ".$subject_code."_r as remid from sem".$semester."_".$dept_id."_r where enrolment = $enrolment";
                                                $resultMark = mysqli_query($conn, $sqlGetMark);
                                                if(mysqli_num_rows($resultMark)>0){
                                                    $rowmark = mysqli_fetch_assoc($resultMark);
                                                    ?>
                                            <input type="text" id="<?php echo $subject_code?>" name="<?php echo $subject_code?>" value="<?php echo $rowmark['remid']?>"/>
                                                        <?php
                                                }else{
                                                    echo 'N.A.';
                                                }
                                            }
                                            ?>
                                        </td>
                                    </tr>
                                                <?php
                                        }
                                        ?>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-4"></div>
                        <div class="col-4">
                            <input type="submit" name="submit" id="submit" class="form-control btn btn-primary"/>
                        </div>
                    </div>
                </form>
                                <?php
                        }else{
                            echo 'No Data';
                        }
                    }
                    
                    if(isset($_GET['status'])){
                        if($_GET['status']==="success"){
                            ?>
                <div class="alert alert-success text-center">Successfully Changed</div>
                                <?php
                        }else if ($_GET['status']==="failed"){
                            ?>
                <div class="alert alert-success text-center">Operation Failed</div>
                                <?php
                        }
                    }
                ?>
            </div>
        </div>
    </body>
</html>
