<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');


// Incluimos el archivo fpdf
require_once APPPATH . "/third_party/fpdf/fpdf.php";

//Extendemos la clase Pdf de la clase fpdf para que herede todas sus variables y funciones
class Pdf3 extends FPDF {

    public function __construct() {
        parent::__construct();
    }

    public function Header() {

        $this->Image('dist/img/logo.png', 11, 10, 189, 11);
        $this->Ln(12);
        $this->SetFont('Arial', 'BU', 13);
    }

}

class Pdf extends FPDF {

    var $exp;
    var $cod_verificacion;
    var $clave;

    public function __construct() {
        parent::__construct();
    }

    // El encabezado del PDF
    public function Header() {

        $this->Image('dist/img/logo.png', 9, 10, 189, 15);
        $this->Ln(17);
        $this->SetFont('Arial', 'BU', 13);
    }

    function setExpediente($numero) {
        $this->exp = $numero;
    }

    function getExpediente() {
        return $this->exp;
    }

    function setClave($exp_clave) {
        $this->clave = $exp_clave;
    }

    function getClave() {
        return $this->clave;
    }

    function setCodVerificacion($numero) {
        $this->cod_verificacion = $numero;
    }

    function getCodVerificacion() {
        return $this->cod_verificacion;
    }

    // El pie del pdf
    public function Footer() {
        $this->SetY(-15);
        $this->SetFont('Arial', 'I', 8);
        if ($this->getExpediente() != '') {
            $exp_clave = null;
            if ($this->getClave() != '') {
                $exp_clave = ' | ' . 'Clave: ' . $this->getClave();
            }
            $this->Cell(0, 10, $this->getExpediente() . $exp_clave, 0, 0, 'R');
        }
        $this->SetY(-15);
        if ($this->getExpediente() != '') {
            $this->Cell(0, 10, '# ' . $this->getCodVerificacion(), 0, 0, 'L');
        }
    }

    var $widths;
    var $aligns;

    function SetWidths($w) {
        //Set the array of column widths
        $this->widths = $w;
    }

    function SetAligns($a) {
        //Set the array of column alignments
        $this->aligns = $a;
    }

    function Row($data) {
        //Calculate the height of the row
        $nb = 0;
        for ($i = 0; $i < count($data); $i++)
            $nb = max($nb, $this->NbLines($this->widths[$i], $data[$i]));
        $h = 3 * $nb;
        //Issue a page break first if needed
        $this->CheckPageBreak($h);
        //Draw the cells of the row
        for ($i = 0; $i < count($data); $i++) {
            $w = $this->widths[$i];
            $a = isset($this->aligns[$i]) ? $this->aligns[$i] : 'L';
            //Save the current position
            $x = $this->GetX();
            $y = $this->GetY();
            //Draw the border
            $this->Rect($x, $y, $w, $h);
            //Print the text
            $this->MultiCell($w, 3, $data[$i], 0, $a);
            //Put the position to the right of the cell
            $this->SetXY($x + $w, $y);
        }
        //Go to the next line
        $this->Ln($h);
    }

    function CheckPageBreak($h) {
        //If the height h would cause an overflow, add a new page immediately
        if ($this->GetY() + $h > $this->PageBreakTrigger)
            $this->AddPage($this->CurOrientation);
    }

    function NbLines($w, $txt) {
        //Computes the number of lines a MultiCell of width w will take
        $cw = &$this->CurrentFont['cw'];
        if ($w == 0)
            $w = $this->w - $this->rMargin - $this->x;
        $wmax = ($w - 2 * $this->cMargin) * 1000 / $this->FontSize;
        $s = str_replace("\r", '', $txt);
        $nb = strlen($s);
        if ($nb > 0 and $s[$nb - 1] == "\n")
            $nb--;
        $sep = -1;
        $i = 0;
        $j = 0;
        $l = 0;
        $nl = 1;
        while ($i < $nb) {
            $c = $s[$i];
            if ($c == "\n") {
                $i++;
                $sep = -1;
                $j = $i;
                $l = 0;
                $nl++;
                continue;
            }
            if ($c == ' ')
                $sep = $i;
            $l += $cw[$c];
            if ($l > $wmax) {
                if ($sep == -1) {
                    if ($i == $j)
                        $i++;
                } else
                    $i = $sep + 1;
                $sep = -1;
                $j = $i;
                $l = 0;
                $nl++;
            } else
                $i++;
        }
        return $nl;
    }

}

?>