/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cellThreshold;

/**
 *
 * @author tanner
 */
public class cellThreshold implements PlugIn {
    @Override;
    public void run(String arg) {
        IJ.showMessage("This is the plugin.");
    }
    
    public static void main(final String... args) {
        new ij.ImageJ());
        new cellThreshold().run(**);
    }
}
