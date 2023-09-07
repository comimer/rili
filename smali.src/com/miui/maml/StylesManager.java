package com.miui.maml;

import com.miui.maml.util.Utils;
import com.miui.maml.util.Utils.XmlTraverseListener;
import java.util.HashMap;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

public class StylesManager
{
  private HashMap<String, Style> mStyles = new HashMap();
  
  public StylesManager(Element paramElement)
  {
    Utils.traverseXmlElementChildren(paramElement, "Style", new Utils.XmlTraverseListener()
    {
      public void onChild(Element paramAnonymousElement)
      {
        paramAnonymousElement = new StylesManager.Style(StylesManager.this, paramAnonymousElement);
        StylesManager.this.mStyles.put(paramAnonymousElement.name, paramAnonymousElement);
      }
    });
  }
  
  public Style getStyle(String paramString)
  {
    return (Style)this.mStyles.get(paramString);
  }
  
  public class Style
  {
    public static final String TAG = "Style";
    private Style base;
    private HashMap<String, String> mAttrs = new HashMap();
    public String name;
    
    public Style(Element paramElement)
    {
      paramElement = paramElement.getAttributes();
      for (int i = 0; i < paramElement.getLength(); i++)
      {
        Object localObject = paramElement.item(i);
        String str = ((Node)localObject).getNodeName();
        localObject = ((Node)localObject).getNodeValue();
        if (str.equals("name")) {
          this.name = ((String)localObject);
        } else if (str.equals("base")) {
          this.base = ((Style)StylesManager.this.mStyles.get(localObject));
        } else {
          this.mAttrs.put(str, localObject);
        }
      }
    }
    
    public String getAttr(String paramString)
    {
      Object localObject = (String)this.mAttrs.get(paramString);
      if (localObject != null) {
        return localObject;
      }
      localObject = this.base;
      if (localObject != null) {
        return ((Style)localObject).getAttr(paramString);
      }
      return null;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.StylesManager
 * JD-Core Version:    0.7.0.1
 */