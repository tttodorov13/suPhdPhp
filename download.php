<?php

reportMesUniversityTxt();

function reportMesUniversityTxt() {
    $content = chr(239) . chr(187) . chr(191);
    $content .= reportMesUniversityUStudAll();
    $handle = fopen("2291001_2015_1_PhD.txt", "w");
    fwrite($handle, $content);
    fclose($handle);

    header('Content-Type: text/plain; charset=windows-1251');
    header('Content-Disposition: attachment; filename=' . basename('2291001_2015_1_PhD.txt'));
    header('Expires: 0');
    header('Cache-Control: must-revalidate');
    header('Pragma: public');
    header('Content-Length: ' . filesize('2291001_2015_1_PhD.txt'));
    readfile('2291001_2015_1_PhD.txt');
    die();
}

function reportMesUniversityUStudAll() {
// set connection var
    try {
        $db = new PDO('mysql:host=localhost;dbname=phd', 'phd', 'phd');
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $db->exec("SET NAMES utf8");
    } catch (Exception $e) {
        echo $e->getMessage();
    }

    $content = "\r\n" . '[UStudAll]';

//query to get student groups str
    $sqlAllUsersPhd = "SELECT * 
                        FROM UStudAll;";

    foreach ($db->query($sqlAllUsersPhd) as $key => $value) {
// add to .txt file
        $content .= "\r\n" . "'" .
                /* 1 */ $value['PersonalNumber'] . "'|" .
                /* 2 */ $value['PINType_ID'] . "|'" .
                /* 3 */ $value['FirstName'] . "'|'" .
                /* 4 */ $value['SecondName'] . "'|'" .
                /* 5 */ $value['FamilyName'] . "'|" .
                /* 6 */ $value['Gender_ID'] . "|" .
                /* 7 */ $value['BPlaceEKATTE'] . "|" .
                /* 8 */ $value['Nationality_ID'] . "|" .
                /* 9 */ $value['CitizenCountry_ID'] . "|" .
                /* 10 */ $value['ResidentTownEKATTE'] . "|'" .
                /* 11 */ $value['BirthDate'] . "'|" .
                /* 12 */ $value['PE_Type'] . "|" .
                /* 13 */ $value['PE_Year'] . "|'" .
                /* 14 */ $value['PE_SchoolFrom_Name'] . "'|" .
                /* 15 */ $value['PE_SchoolFromCity'] . "|'" .
                /* 16 */ $value['PE_ProfessionName'] . "'|" .
                /* 17 */ $value['PE_SchoolCountry_ID'] . "|'" .
                /* 18 */ $value['PINumberText'] . "'|" .
                /* 19 */ $value['SpecNumber'] . "|" .
                /* 20 */ $value['Filial_ID'] . "|" .
                /* 21 */ $value['Department_ID'] . "|" .
                /* 22 */ $value['Speciality'] . "|" .
                /* 23 */ $value['CourseClass_ID'] . "|'" .
                /* 24 */ $value['FacNumber'] . "'|" .
                /* 25 */ $value['EduForm'] . "|" .
                /* 26 */ $value['EduDuration'] . "|" .
                /* 27 */ $value['StudyType'] . "|" .
                /* 28 */ $value['MasterType'] . "|" .
                /* 29 */ $value['IncomingYear'] . "|" .
                /* 30 */ $value['ReasonForAcc'] . "|" .
                /* 31 */ $value['isGetGrant'] . "|'" .
                /* 32 */ $value['ActionDate'] . "'|" .
                /* 33 */ $value['Action_ID'] . "|" .
                /* 34 */ $value['GoneWhere'] . "|'" .
                /* 35 */ $value['DocumentDetails'] . "'|" .
                /* 36 */ $value['isInHostel'] . "|" .
                /* 37 */ $value['useCanteen'] . "|" .
                /* 38 */ $value['useCamps'] . "|'" .
                /* 39 */ $value['StartDate'] . "'|'" .
                /* 40 */ $value['EndDate'] . "'|'" .
                /* 41 */ $value['ProgrammeNotes'] . "'|" .
                /* 42 */ $value['OKS'] . "|" .
                /* 43 */ $value['PE_Year2'] . "|" .
                /* 44 */ $value['PE_SchoolFrom_ID'] . "|'" .
                /* 45 */ $value['PE_SchoolFrom_Name2'] . "'|" .
                /* 46 */ $value['PE_SchoolFrom_Town'] . "|" .
                /* 47 */ $value['PE_ProfGroup'] . "|'" .
                /* 48 */ $value['PE_DiplomaNum'] . "'|'" .
                /* 49 */ $value['PE_DiplomaDate'] . "'|" .
                /* 50 */ $value['isNewSpeciality'];
    }

    return $content;
}

?>