package com.miui.maml.util;

import android.text.TextUtils;
import com.miui.maml.StylesManager.Style;
import org.w3c.dom.Element;

public class StyleHelper
{
  public static String getAttr(Element paramElement, String paramString, StylesManager.Style paramStyle)
  {
    paramElement = paramElement.getAttribute(paramString);
    if (!TextUtils.isEmpty(paramElement)) {
      return paramElement;
    }
    if (paramStyle != null) {
      paramElement = paramStyle.getAttr(paramString);
    }
    if (paramElement == null) {
      paramElement = "";
    }
    return paramElement;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.StyleHelper
 * JD-Core Version:    0.7.0.1
 */