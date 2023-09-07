package com.miui.maml.elements;

import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.folme.AnimatedProperty;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import miuix.animation.property.b;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;

public class AnimStateElement
  extends StateElement
{
  public static final String TAG_NAME = "AnimState";
  private ConcurrentHashMap<String, IndexedVariable> mAttrs = new ConcurrentHashMap();
  
  public AnimStateElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    if (!this.mHasName) {
      return;
    }
    NamedNodeMap localNamedNodeMap = paramElement.getAttributes();
    int i = localNamedNodeMap.getLength();
    paramScreenElementRoot = getVariables();
    for (int j = 0; j < i; j++)
    {
      Object localObject = localNamedNodeMap.item(j);
      paramElement = ((Node)localObject).getNodeName();
      if (!"name".equals(paramElement))
      {
        localObject = Expression.build(paramScreenElementRoot, ((Node)localObject).getNodeValue());
        double d;
        if (localObject != null) {
          d = ((Expression)localObject).evaluate();
        } else {
          d = 0.0D;
        }
        localObject = new StringBuilder();
        ((StringBuilder)localObject).append(this.mName);
        ((StringBuilder)localObject).append(".");
        ((StringBuilder)localObject).append(paramElement);
        localObject = new IndexedVariable(((StringBuilder)localObject).toString(), paramScreenElementRoot, true);
        ((IndexedVariable)localObject).set(d);
        this.mAttrs.put(paramElement, localObject);
      }
    }
  }
  
  public void clear()
  {
    Iterator localIterator = this.mAttrs.values().iterator();
    while (localIterator.hasNext()) {
      ((IndexedVariable)localIterator.next()).set(0.0D);
    }
    this.mAttrs.clear();
  }
  
  public e9.a getAnimState(String paramString)
  {
    paramString = new e9.a(paramString);
    Iterator localIterator = this.mAttrs.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      b localb = AnimatedProperty.getPropertyByName((String)localEntry.getKey());
      if (localb != null) {
        if ((localb instanceof miuix.animation.property.a)) {
          paramString.c(localb, (int)((IndexedVariable)localEntry.getValue()).getDouble(), new long[] { 2L });
        } else {
          paramString.b(localb, (float)((IndexedVariable)localEntry.getValue()).getDouble(), new long[] { 2L });
        }
      }
    }
    return paramString;
  }
  
  public Collection<String> getProperties()
  {
    return this.mAttrs.keySet();
  }
  
  public void removeAttr(String[] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      String str = paramArrayOfString[j];
      IndexedVariable localIndexedVariable = (IndexedVariable)this.mAttrs.get(str);
      if (localIndexedVariable != null)
      {
        localIndexedVariable.set(0.0D);
        this.mAttrs.remove(str);
      }
    }
  }
  
  public void updateAttr(String[] paramArrayOfString, double[] paramArrayOfDouble)
  {
    if ((paramArrayOfString != null) && (paramArrayOfDouble != null) && (paramArrayOfString.length == paramArrayOfDouble.length))
    {
      int i = paramArrayOfString.length;
      for (int j = 0; j < i; j++)
      {
        IndexedVariable localIndexedVariable = (IndexedVariable)this.mAttrs.get(paramArrayOfString[j]);
        Object localObject = localIndexedVariable;
        if (localIndexedVariable == null)
        {
          localObject = new StringBuilder();
          ((StringBuilder)localObject).append(this.mName);
          ((StringBuilder)localObject).append(".");
          ((StringBuilder)localObject).append(paramArrayOfString[j]);
          localObject = new IndexedVariable(((StringBuilder)localObject).toString(), getVariables(), true);
          this.mAttrs.put(paramArrayOfString[j], localObject);
        }
        ((IndexedVariable)localObject).set(paramArrayOfDouble[j]);
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.AnimStateElement
 * JD-Core Version:    0.7.0.1
 */