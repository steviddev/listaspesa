/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package it.stevid.listaspesa;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author stevid
 */
public class ListaSpesaBean {
    
    private List<Voce> spesa;
    
    public  ListaSpesaBean(){
        spesa = new ArrayList<Voce>();
    }
    
    public void aggiungi(String testo){
        Voce voce = new Voce(testo);
        spesa.add(voce);
    }
    
    public boolean elimina(int pos){
        if( pos>=0 && pos <= spesa.size()-1){
            spesa.remove(pos);
            return true;
        }else{
            return false;
        }
    }
    
    public String getMsg(int pos){
        return spesa.get(pos).getVoce();
    }
    
    public void scambia(int pos1, int pos2){
        if( pos1 < 0 || pos1 > spesa.size()-1 || pos1 ==pos2){
            return;
        }
        if( pos2 < 0 || pos2 > spesa.size()-1 ){
            return;
        }  
        
        Voce appoggio1 ;
        
        appoggio1 = spesa.get(pos1);
        spesa.set(pos1, spesa.get(pos2));
        spesa.set(pos2, appoggio1);
        
    }
    
    public boolean modifica(int pos, String testo){
        if( pos>=0 && pos < spesa.size()-1){
            Voce voce = new Voce(testo);
            spesa.set(pos, voce);
            return true;
        }else{
            return false;
        }           
    }

    public List<Voce> getSpesa() {
        return spesa;
    }
    
    
    
}
