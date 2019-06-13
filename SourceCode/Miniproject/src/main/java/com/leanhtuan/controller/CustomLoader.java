package com.leanhtuan.controller;

import org.springframework.context.ResourceLoaderAware;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;

public class CustomLoader implements ResourceLoaderAware {
	private ResourceLoader rsLoader;

	public void setResourceLoader(ResourceLoader resourceLoader) {
		// TODO Auto-generated method stub
		rsLoader = resourceLoader;
	}
	
	public Resource getResource(String url) {
		return rsLoader.getResource(url);
	}

}
