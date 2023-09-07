package com.miui.maml.util;

import android.graphics.Color;
import android.util.Log;
import com.miui.maml.StylesManager.Style;
import com.miui.maml.data.Expression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.data.Variables;
import org.w3c.dom.Element;

public class ColorParser
{
  private static final int DEFAULT_COLOR = -16777216;
  private static final String LOG_TAG = "ColorParser";
  private int mColor = -16777216;
  private String mColorExpression;
  private String mCurColorString;
  private IndexedVariable mIndexedColorVar;
  private Expression[] mRGBExpression;
  private ExpressionType mType;
  
  public ColorParser(Variables paramVariables, String paramString)
  {
    paramString = paramString.trim();
    this.mColorExpression = paramString;
    if (paramString.startsWith("#"))
    {
      this.mType = ExpressionType.CONST;
      try
      {
        this.mColor = Color.parseColor(this.mColorExpression);
      }
      catch (IllegalArgumentException paramVariables)
      {
        this.mColor = -16777216;
      }
    }
    else if (this.mColorExpression.startsWith("@"))
    {
      this.mType = ExpressionType.VARIABLE;
      this.mIndexedColorVar = new IndexedVariable(this.mColorExpression.substring(1), paramVariables, false);
    }
    else if ((this.mColorExpression.startsWith("argb(")) && (this.mColorExpression.endsWith(")")))
    {
      this.mType = ExpressionType.ARGB;
      paramString = this.mColorExpression;
      paramVariables = Expression.buildMultiple(paramVariables, paramString.substring(5, paramString.length() - 1));
      this.mRGBExpression = paramVariables;
      if ((paramVariables != null) && (paramVariables.length != 4))
      {
        Log.e("ColorParser", "bad expression format");
        throw new IllegalArgumentException("bad expression format.");
      }
    }
    else
    {
      this.mType = ExpressionType.INVALID;
    }
  }
  
  public static ColorParser fromElement(Variables paramVariables, Element paramElement)
  {
    return new ColorParser(paramVariables, paramElement.getAttribute("color"));
  }
  
  public static ColorParser fromElement(Variables paramVariables, Element paramElement, StylesManager.Style paramStyle)
  {
    return new ColorParser(paramVariables, StyleHelper.getAttr(paramElement, "color", paramStyle));
  }
  
  public static ColorParser fromElement(Variables paramVariables, Element paramElement, String paramString, StylesManager.Style paramStyle)
  {
    return new ColorParser(paramVariables, StyleHelper.getAttr(paramElement, paramString, paramStyle));
  }
  
  public int getColor()
  {
    int i = 1.$SwitchMap$com$miui$maml$util$ColorParser$ExpressionType[this.mType.ordinal()];
    if (i != 1)
    {
      int j = -16777216;
      if (i != 2)
      {
        if (i != 3) {
          this.mColor = -16777216;
        } else {
          this.mColor = Color.argb((int)this.mRGBExpression[0].evaluate(), (int)this.mRGBExpression[1].evaluate(), (int)this.mRGBExpression[2].evaluate(), (int)this.mRGBExpression[3].evaluate());
        }
      }
      else
      {
        String str = this.mIndexedColorVar.getString();
        if (!Utils.equals(str, this.mCurColorString))
        {
          if (!Utils.isEmpty(str)) {
            j = Color.parseColor(str);
          }
          this.mColor = j;
          this.mCurColorString = str;
        }
      }
    }
    return this.mColor;
  }
  
  private static enum ExpressionType
  {
    static
    {
      ExpressionType localExpressionType1 = new ExpressionType("CONST", 0);
      CONST = localExpressionType1;
      ExpressionType localExpressionType2 = new ExpressionType("VARIABLE", 1);
      VARIABLE = localExpressionType2;
      ExpressionType localExpressionType3 = new ExpressionType("ARGB", 2);
      ARGB = localExpressionType3;
      ExpressionType localExpressionType4 = new ExpressionType("INVALID", 3);
      INVALID = localExpressionType4;
      $VALUES = new ExpressionType[] { localExpressionType1, localExpressionType2, localExpressionType3, localExpressionType4 };
    }
    
    private ExpressionType() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.ColorParser
 * JD-Core Version:    0.7.0.1
 */