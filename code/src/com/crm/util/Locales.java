package com.crm.util;

import java.util.Hashtable;
import java.util.Locale;
import java.util.Map;

public class Locales {
    public Map<String, Locale> getLocales() {
        Map<String, Locale> locales =new Hashtable<String, Locale>(2);
        locales.put("Simplified Chinese", Locale.CHINA);
        locales.put("American English", Locale.US);
        return locales;
    }
}
