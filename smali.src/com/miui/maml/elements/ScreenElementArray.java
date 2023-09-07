package com.miui.maml.elements;

import android.text.TextUtils;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.util.Utils;
import com.miui.maml.util.Utils.XmlTraverseListener;
import org.w3c.dom.Element;

public class ScreenElementArray
  extends ElementGroup
{
  private static final String DEF_INDEX_VAR_NAME = "__i";
  public static final String TAG_NAME = "Array";
  
  public ScreenElementArray(Element paramElement, final ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    final int i = Utils.getAttrAsInt(paramElement, "count", 0);
    String str1 = paramElement.getAttribute("indexName");
    String str2 = str1;
    if (TextUtils.isEmpty(str1)) {
      str2 = "__i";
    }
    Utils.traverseXmlElementChildren(paramElement, null, new Utils.XmlTraverseListener()
    {
      public void onChild(Element paramAnonymousElement)
      {
        String str = ScreenElementArray.this.getAttr(paramAnonymousElement, "name");
        boolean bool = paramAnonymousElement.getTagName().startsWith("Var");
        Object localObject1 = null;
        int i = 0;
        while (i < i)
        {
          if (bool)
          {
            paramAnonymousElement.setAttribute("dontAddToMap", "true");
          }
          else
          {
            localObject2 = new StringBuilder();
            ((StringBuilder)localObject2).append("[");
            ((StringBuilder)localObject2).append(i);
            ((StringBuilder)localObject2).append("]");
            paramAnonymousElement.setAttribute("namesSuffix", ((StringBuilder)localObject2).toString());
          }
          ScreenElement localScreenElement = ScreenElementArray.this.onCreateChild(paramAnonymousElement);
          Object localObject2 = localObject1;
          if (localScreenElement != null)
          {
            localObject2 = localObject1;
            if (localObject1 == null)
            {
              localObject2 = ElementGroup.createArrayGroup(paramScreenElementRoot, this.val$indexVar);
              ((ScreenElement)localObject2).setName(str);
              ScreenElementArray.this.addElement((ScreenElement)localObject2);
            }
            ((ElementGroup)localObject2).addElement(localScreenElement);
          }
          i++;
          localObject1 = localObject2;
        }
      }
    });
  }
  
  protected ScreenElement onCreateChild(Element paramElement)
  {
    return null;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.ScreenElementArray
 * JD-Core Version:    0.7.0.1
 */