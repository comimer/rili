package com.miui.maml.elements;

import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.data.ContextVariables;
import com.miui.maml.util.Utils;
import com.miui.maml.util.Utils.XmlTraverseListener;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Element;

public class AttrDataBinders
{
  private static final String ATTR_BITMAP = "bitmap";
  private static final String ATTR_NAME = "name";
  private static final String ATTR_PARAMS = "params";
  private static final String ATTR_PARAS = "paras";
  private static final String ATTR_SRC = "src";
  private static final String ATTR_SRCID = "srcid";
  private static final String ATTR_TEXT = "text";
  private static final String LOG_TAG = "AttrDataBinders";
  public static final String TAG = "AttrDataBinders";
  private ArrayList<AttrDataBinder> mBinders = new ArrayList();
  protected ContextVariables mVars;
  
  public AttrDataBinders(Element paramElement, ContextVariables paramContextVariables)
  {
    this.mVars = paramContextVariables;
    Utils.traverseXmlElementChildren(paramElement, "AttrDataBinder", new Utils.XmlTraverseListener()
    {
      public void onChild(Element paramAnonymousElement)
      {
        try
        {
          ArrayList localArrayList = AttrDataBinders.this.mBinders;
          AttrDataBinders.AttrDataBinder localAttrDataBinder = new com/miui/maml/elements/AttrDataBinders$AttrDataBinder;
          localAttrDataBinder.<init>(paramAnonymousElement, AttrDataBinders.this.mVars);
          localArrayList.add(localAttrDataBinder);
        }
        catch (IllegalArgumentException paramAnonymousElement)
        {
          Log.e("AttrDataBinders", paramAnonymousElement.toString());
        }
      }
    });
  }
  
  public void bind(ElementGroup paramElementGroup)
  {
    Iterator localIterator = this.mBinders.iterator();
    while (localIterator.hasNext()) {
      ((AttrDataBinder)localIterator.next()).bind(paramElementGroup);
    }
  }
  
  public static class AttrDataBinder
  {
    protected String mAttr;
    private Binder mBinder;
    protected String mData;
    protected String mTarget;
    protected ContextVariables mVars;
    
    public AttrDataBinder(Element paramElement, ContextVariables paramContextVariables)
    {
      this.mTarget = paramElement.getAttribute("target");
      this.mAttr = paramElement.getAttribute("attr");
      this.mData = paramElement.getAttribute("data");
      this.mVars = paramContextVariables;
      this.mBinder = createBinder(this.mAttr);
      if ((!TextUtils.isEmpty(this.mTarget)) && (!TextUtils.isEmpty(this.mAttr)) && (!TextUtils.isEmpty(this.mData)) && (this.mBinder != null)) {
        return;
      }
      throw new IllegalArgumentException("invalid AttrDataBinder");
    }
    
    private Binder createBinder(String paramString)
    {
      if (TextUtils.isEmpty(paramString)) {
        return null;
      }
      if ("text".equals(paramString)) {
        return new TextBinder(null);
      }
      if ((!"paras".equals(paramString)) && (!"params".equals(paramString)))
      {
        if ("name".equals(paramString)) {
          return new NameBinder(null);
        }
        if ("bitmap".equals(paramString)) {
          return new BitmapBinder(null);
        }
        if ("src".equals(paramString)) {
          return new SrcBinder(null);
        }
        if ("srcid".equals(paramString)) {
          return new SrcIdBinder(null);
        }
        return null;
      }
      return new ParamsBinder(null);
    }
    
    public boolean bind(ElementGroup paramElementGroup)
    {
      try
      {
        paramElementGroup = paramElementGroup.findElement(this.mTarget);
        if (paramElementGroup != null)
        {
          this.mBinder.bind(paramElementGroup);
          return true;
        }
      }
      catch (Exception paramElementGroup)
      {
        paramElementGroup.printStackTrace();
      }
      return false;
    }
    
    private abstract class Binder
    {
      private Binder() {}
      
      public abstract void bind(ScreenElement paramScreenElement);
    }
    
    private class BitmapBinder
      extends AttrDataBinders.AttrDataBinder.Binder
    {
      private BitmapBinder()
      {
        super(null);
      }
      
      public void bind(ScreenElement paramScreenElement)
      {
        paramScreenElement = (ImageScreenElement)paramScreenElement;
        AttrDataBinders.AttrDataBinder localAttrDataBinder = AttrDataBinders.AttrDataBinder.this;
        paramScreenElement.setBitmap(localAttrDataBinder.mVars.getBmp(localAttrDataBinder.mData));
      }
    }
    
    private class NameBinder
      extends AttrDataBinders.AttrDataBinder.Binder
    {
      private NameBinder()
      {
        super(null);
      }
      
      public void bind(ScreenElement paramScreenElement)
      {
        AttrDataBinders.AttrDataBinder localAttrDataBinder = AttrDataBinders.AttrDataBinder.this;
        paramScreenElement.setName(localAttrDataBinder.mVars.getString(localAttrDataBinder.mData));
      }
    }
    
    private class ParamsBinder
      extends AttrDataBinders.AttrDataBinder.Binder
    {
      private ParamsBinder()
      {
        super(null);
      }
      
      public void bind(ScreenElement paramScreenElement)
      {
        paramScreenElement = (TextScreenElement)paramScreenElement;
        AttrDataBinders.AttrDataBinder localAttrDataBinder = AttrDataBinders.AttrDataBinder.this;
        paramScreenElement.setParams(new Object[] { localAttrDataBinder.mVars.getVar(localAttrDataBinder.mData) });
      }
    }
    
    private class SrcBinder
      extends AttrDataBinders.AttrDataBinder.Binder
    {
      private SrcBinder()
      {
        super(null);
      }
      
      public void bind(ScreenElement paramScreenElement)
      {
        paramScreenElement = (ImageScreenElement)paramScreenElement;
        AttrDataBinders.AttrDataBinder localAttrDataBinder = AttrDataBinders.AttrDataBinder.this;
        paramScreenElement.setSrc(localAttrDataBinder.mVars.getString(localAttrDataBinder.mData));
      }
    }
    
    private class SrcIdBinder
      extends AttrDataBinders.AttrDataBinder.Binder
    {
      private SrcIdBinder()
      {
        super(null);
      }
      
      public void bind(ScreenElement paramScreenElement)
      {
        Object localObject = AttrDataBinders.AttrDataBinder.this;
        localObject = ((AttrDataBinders.AttrDataBinder)localObject).mVars.getDouble(((AttrDataBinders.AttrDataBinder)localObject).mData);
        paramScreenElement = (ImageScreenElement)paramScreenElement;
        double d;
        if (localObject == null) {
          d = 0.0D;
        } else {
          d = ((Double)localObject).doubleValue();
        }
        paramScreenElement.setSrcId(d);
      }
    }
    
    private class TextBinder
      extends AttrDataBinders.AttrDataBinder.Binder
    {
      private TextBinder()
      {
        super(null);
      }
      
      public void bind(ScreenElement paramScreenElement)
      {
        paramScreenElement = (TextScreenElement)paramScreenElement;
        AttrDataBinders.AttrDataBinder localAttrDataBinder = AttrDataBinders.AttrDataBinder.this;
        paramScreenElement.setText(localAttrDataBinder.mVars.getString(localAttrDataBinder.mData));
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.AttrDataBinders
 * JD-Core Version:    0.7.0.1
 */