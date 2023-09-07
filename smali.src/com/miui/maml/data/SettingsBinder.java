package com.miui.maml.data;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Element;

public class SettingsBinder
  extends VariableBinder
{
  public static final String TAG_NAME = "SettingsBinder";
  private boolean mConst;
  private ContentResolver mContentResolver = this.mRoot.getContext().mContext.getContentResolver();
  
  public SettingsBinder(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    if (paramElement != null)
    {
      loadVariables(paramElement);
      this.mConst = ("false".equalsIgnoreCase(paramElement.getAttribute("const")) ^ true);
    }
  }
  
  protected Variable onLoadVariable(Element paramElement)
  {
    return new Variable(paramElement, getContext().mVariables);
  }
  
  public void refresh()
  {
    super.refresh();
    startQuery();
  }
  
  public void resume()
  {
    super.resume();
    if (!this.mConst) {
      startQuery();
    }
  }
  
  public void startQuery()
  {
    Iterator localIterator = this.mVariables.iterator();
    while (localIterator.hasNext()) {
      ((Variable)localIterator.next()).query();
    }
    onUpdateComplete();
  }
  
  private static enum Category
  {
    static
    {
      Category localCategory1 = new Category("Secure", 0);
      Secure = localCategory1;
      Category localCategory2 = new Category("System", 1);
      System = localCategory2;
      $VALUES = new Category[] { localCategory1, localCategory2 };
    }
    
    private Category() {}
  }
  
  private class Variable
    extends VariableBinder.Variable
  {
    public SettingsBinder.Category mCategory;
    public String mKey;
    
    public Variable(Element paramElement, Variables paramVariables)
    {
      super(paramVariables);
      if ("secure".equals(paramElement.getAttribute("category"))) {
        this$1 = SettingsBinder.Category.Secure;
      } else {
        this$1 = SettingsBinder.Category.System;
      }
      this.mCategory = SettingsBinder.this;
      this.mKey = paramElement.getAttribute("key");
    }
    
    public void query()
    {
      int i = SettingsBinder.1.$SwitchMap$com$miui$maml$data$SettingsBinder$Category[this.mCategory.ordinal()];
      String str1;
      String str2;
      if (i != 1)
      {
        if (i == 2)
        {
          i = this.mType;
          if (i != 2)
          {
            if (i != 3)
            {
              if (i != 4)
              {
                if ((i == 5) || (i == 6)) {
                  set(Settings.Secure.getFloat(SettingsBinder.this.mContentResolver, this.mKey, (float)this.mDefNumberValue));
                }
              }
              else {
                set(Settings.Secure.getLong(SettingsBinder.this.mContentResolver, this.mKey, this.mDefNumberValue));
              }
            }
            else {
              set(Settings.Secure.getInt(SettingsBinder.this.mContentResolver, this.mKey, (int)this.mDefNumberValue));
            }
          }
          else
          {
            str1 = Settings.Secure.getString(SettingsBinder.this.mContentResolver, this.mKey);
            str2 = str1;
            if (str1 == null) {
              str2 = this.mDefStringValue;
            }
            set(str2);
          }
        }
      }
      else
      {
        i = this.mType;
        if (i != 2)
        {
          if (i != 3)
          {
            if (i != 4)
            {
              if ((i == 5) || (i == 6)) {
                set(Settings.System.getFloat(SettingsBinder.this.mContentResolver, this.mKey, (float)this.mDefNumberValue));
              }
            }
            else {
              set(Settings.System.getLong(SettingsBinder.this.mContentResolver, this.mKey, this.mDefNumberValue));
            }
          }
          else {
            set(Settings.System.getInt(SettingsBinder.this.mContentResolver, this.mKey, (int)this.mDefNumberValue));
          }
        }
        else
        {
          str1 = Settings.System.getString(SettingsBinder.this.mContentResolver, this.mKey);
          str2 = str1;
          if (str1 == null) {
            str2 = this.mDefStringValue;
          }
          set(str2);
        }
      }
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.SettingsBinder
 * JD-Core Version:    0.7.0.1
 */