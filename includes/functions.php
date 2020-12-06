<?php 
    $result = array();

    function getAllUsers($conn){

        $query = "SELECT * FROM tbl_projects";

        $runQuery = $conn->query($query);

        while($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }

        echo(json_encode($result[0]));
    }
    function getSingleUser($conn, $id)
    {
        $query = "SELECT * FROM tbl_projects WHERE id=" . $id . "";

        $runQuery = $conn->query($query);

        while ($row = $runQuery->fetchAll(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }

        echo(json_encode($result[0]));
    }