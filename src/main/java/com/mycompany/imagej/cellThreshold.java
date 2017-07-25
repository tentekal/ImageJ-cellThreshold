/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.imagej;

import java.net.URL;

import net.imagej.ImageJ;


/** Intro to API */
public class cellThreshold {
	
	public static void main(final String...strings) throws Exception {
		
		final ij.ImageJ ij = new ImageJ();
		
		ij.platform()open(new URL("http://imagej.net/"));
	}
}