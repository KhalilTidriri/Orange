/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

/**
 *
 * @author Dell
 */
@Entity
public class Achat implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nom;
    private String mode;
    
    @OneToOne
    private TypeAchats typeAchats;
    @ManyToOne
    private Client client;

    public Achat() {
    }

    public Achat(String nom, String mode, TypeAchats typeAchats, Client client) {
        this.nom = nom;
        this.mode = mode;
        this.typeAchats = typeAchats;
        this.client = client;
    }
    
    

    public Achat(Long id, String nom, TypeAchats typeAchats, Client client) {
        this.id = id;
        this.nom = nom;
        this.typeAchats = typeAchats;
        this.client = client;
    }

    public TypeAchats getTypeAchats() {
        return typeAchats;
    }

    public void setTypeAchats(TypeAchats typeAchats) {
        this.typeAchats = typeAchats;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }
    
    
    
    

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Achat)) {
            return false;
        }
        Achat other = (Achat) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bean.Achats[ id=" + id + " ]";
    }
    
}
