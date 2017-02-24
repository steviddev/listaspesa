/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package it.stevid.listaspesa;

/**
 *
 * @author stevid
 */
public class ModificaFormData {
    private int posVoce;
    private Voce voce;
    private String msg = "";

    public ModificaFormData() {
        posVoce = -1;
        voce = new Voce("");
        msg = "";
    }
    
    public ModificaFormData(int pos, Voce voce){
        this.posVoce = pos;
        this.voce    = voce;
        msg = voce.getVoce();
    }
    
    public int getPosVoce() {
        return posVoce;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Voce getVoce() {
        return voce;
    }

    public void setPosVoce(int posVoce) {
        this.posVoce = posVoce;
    }

    public void setVoce(Voce voce) {
        this.voce = voce;
    }
    public String getMsg(){
        return voce.getVoce();
    }
    
}
