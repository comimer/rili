package com.miui.maml.elements;

import android.util.ArrayMap;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.folme.AnimatedProperty;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

public class FolmeStateElement
  extends StateElement
{
  public static final String TAG_NAME = "FolmeState";
  private ArrayMap<String, Expression> mAttrs = new ArrayMap();
  
  public FolmeStateElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    paramElement = paramElement.getAttributes();
    int i = paramElement.getLength();
    for (int j = 0; j < i; j++)
    {
      paramScreenElementRoot = paramElement.item(j);
      Expression localExpression = Expression.build(getVariables(), paramScreenElementRoot.getNodeValue());
      if (localExpression != null) {
        this.mAttrs.put(paramScreenElementRoot.getNodeName(), localExpression);
      }
    }
  }
  
  public e9.a getAnimState(String paramString)
  {
    e9.a locala = new e9.a(paramString);
    Iterator localIterator = this.mAttrs.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      paramString = AnimatedProperty.getPropertyByName((String)localEntry.getKey());
      if (paramString != null) {
        if ((paramString instanceof miuix.animation.property.a)) {
          locala.c(paramString, (int)((Expression)localEntry.getValue()).evaluate(), new long[] { 2L });
        } else {
          locala.b(paramString, (float)((Expression)localEntry.getValue()).evaluate(), new long[] { 2L });
        }
      }
    }
    return locala;
  }
  
  public Collection<String> getProperties()
  {
    return this.mAttrs.keySet();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.FolmeStateElement
 * JD-Core Version:    0.7.0.1
 */