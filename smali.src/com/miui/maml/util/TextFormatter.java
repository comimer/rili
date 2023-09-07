package com.miui.maml.util;

import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.StylesManager.Style;
import com.miui.maml.data.Expression;
import com.miui.maml.data.IndexedVariable;
import com.miui.maml.data.Variables;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.IllegalFormatException;
import org.w3c.dom.Element;

public class TextFormatter
{
  private static final String LOG_TAG = "TextFormatter";
  private String mFormat;
  private Expression mFormatExpression;
  private IndexedVariable mIndexedFormatVar;
  private IndexedVariable mIndexedTextVar;
  private FormatPara[] mParas;
  private Object[] mParasValue;
  private String mText;
  private Expression mTextExpression;
  
  public TextFormatter(Variables paramVariables, String paramString)
  {
    this(paramVariables, paramString, "", "");
  }
  
  public TextFormatter(Variables paramVariables, String paramString, Expression paramExpression)
  {
    this(paramVariables, paramString, "", "", paramExpression, null);
  }
  
  public TextFormatter(Variables paramVariables, String paramString1, String paramString2)
  {
    this(paramVariables, "", paramString1, paramString2);
  }
  
  public TextFormatter(Variables paramVariables, String paramString1, String paramString2, String paramString3)
  {
    this.mText = paramString1;
    if (paramString1.startsWith("@"))
    {
      paramString1 = this.mText.substring(1);
      this.mText = paramString1;
      if (!paramString1.startsWith("@")) {
        this.mIndexedTextVar = new IndexedVariable(this.mText, paramVariables, false);
      }
    }
    this.mFormat = paramString2;
    if (paramString2.startsWith("@"))
    {
      paramString1 = this.mFormat.substring(1);
      this.mFormat = paramString1;
      if (!paramString1.startsWith("@")) {
        this.mIndexedFormatVar = new IndexedVariable(this.mFormat, paramVariables, false);
      }
    }
    if (!TextUtils.isEmpty(paramString3))
    {
      paramVariables = FormatPara.buildArray(paramVariables, paramString3);
      this.mParas = paramVariables;
      if (paramVariables != null) {
        this.mParasValue = new Object[paramVariables.length];
      }
    }
  }
  
  public TextFormatter(Variables paramVariables, String paramString1, String paramString2, String paramString3, Expression paramExpression1, Expression paramExpression2)
  {
    this(paramVariables, paramString1, paramString2, paramString3);
    this.mTextExpression = paramExpression1;
    this.mFormatExpression = paramExpression2;
  }
  
  public static TextFormatter fromElement(Variables paramVariables, Element paramElement, StylesManager.Style paramStyle)
  {
    String str1 = StyleHelper.getAttr(paramElement, "paras", paramStyle);
    String str2 = str1;
    if (TextUtils.isEmpty(str1)) {
      str2 = StyleHelper.getAttr(paramElement, "params", paramStyle);
    }
    return new TextFormatter(paramVariables, StyleHelper.getAttr(paramElement, "text", paramStyle), StyleHelper.getAttr(paramElement, "format", paramStyle), str2, Expression.build(paramVariables, StyleHelper.getAttr(paramElement, "textExp", paramStyle)), Expression.build(paramVariables, StyleHelper.getAttr(paramElement, "formatExp", paramStyle)));
  }
  
  public static TextFormatter fromElement(Variables paramVariables, Element paramElement, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    return new TextFormatter(paramVariables, paramElement.getAttribute(paramString1), paramElement.getAttribute(paramString2), paramElement.getAttribute(paramString3), Expression.build(paramVariables, paramElement.getAttribute(paramString4)), Expression.build(paramVariables, paramElement.getAttribute(paramString5)));
  }
  
  public String getFormat()
  {
    Object localObject = this.mFormatExpression;
    if (localObject != null) {
      return ((Expression)localObject).evaluateStr();
    }
    localObject = this.mIndexedFormatVar;
    if (localObject != null) {
      return ((IndexedVariable)localObject).getString();
    }
    return this.mFormat;
  }
  
  public String getText()
  {
    Object localObject1 = this.mTextExpression;
    if (localObject1 != null) {
      return ((Expression)localObject1).evaluateStr();
    }
    localObject1 = getFormat();
    if (!TextUtils.isEmpty((CharSequence)localObject1))
    {
      if (this.mParas != null) {
        for (int i = 0;; i++)
        {
          localObject2 = this.mParas;
          if (i >= localObject2.length) {
            break;
          }
          this.mParasValue[i] = localObject2[i].evaluate();
        }
      }
      Object localObject2 = this.mParasValue;
      if (localObject2 != null) {
        try
        {
          localObject2 = String.format((String)localObject1, (Object[])localObject2);
          return localObject2;
        }
        catch (IllegalFormatException localIllegalFormatException)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localStringBuilder.append("Format error: ");
          localStringBuilder.append((String)localObject1);
          return localStringBuilder.toString();
        }
      }
    }
    localObject1 = this.mIndexedTextVar;
    if (localObject1 != null) {
      return ((IndexedVariable)localObject1).getString();
    }
    return this.mText;
  }
  
  public boolean hasFormat()
  {
    return TextUtils.isEmpty(this.mFormat) ^ true;
  }
  
  public void setParams(Object... paramVarArgs)
  {
    if (paramVarArgs != null)
    {
      this.mParas = null;
      int i = paramVarArgs.length;
      if (this.mParasValue == null) {
        this.mParasValue = new Object[i];
      }
      Object[] arrayOfObject = this.mParasValue;
      int j = i;
      if (arrayOfObject.length < i) {
        j = arrayOfObject.length;
      }
      this.mParasValue = Arrays.copyOf(paramVarArgs, j);
    }
  }
  
  public void setText(String paramString)
  {
    this.mText = paramString;
    this.mFormat = "";
  }
  
  private static class ExpressioPara
    extends TextFormatter.FormatPara
  {
    private Expression mExp;
    
    public ExpressioPara(Expression paramExpression)
    {
      super();
      this.mExp = paramExpression;
    }
    
    public Object evaluate()
    {
      return Long.valueOf(this.mExp.evaluate());
    }
  }
  
  private static abstract class FormatPara
  {
    public static FormatPara build(Variables paramVariables, String paramString)
    {
      String str = paramString.trim();
      if (str.startsWith("@")) {
        return new TextFormatter.StringVarPara(paramVariables, str.substring(1));
      }
      paramVariables = Expression.build(paramVariables, str);
      if (paramVariables == null)
      {
        paramVariables = new StringBuilder();
        paramVariables.append("invalid parameter expression:");
        paramVariables.append(paramString);
        Log.e("TextFormatter", paramVariables.toString());
        return null;
      }
      return new TextFormatter.ExpressioPara(paramVariables);
    }
    
    public static FormatPara[] buildArray(Variables paramVariables, String paramString)
    {
      ArrayList localArrayList = new ArrayList();
      int i = 0;
      int j = 0;
      int i1;
      for (int k = j; i < paramString.length(); k = i1)
      {
        int m = paramString.charAt(i);
        int n = j;
        if (k == 0)
        {
          n = j;
          if (m == 44)
          {
            FormatPara localFormatPara = build(paramVariables, paramString.substring(j, i));
            if (localFormatPara == null) {
              return null;
            }
            localArrayList.add(localFormatPara);
            n = i + 1;
          }
        }
        if (m == 40)
        {
          i1 = k + 1;
        }
        else
        {
          i1 = k;
          if (m == 41) {
            i1 = k - 1;
          }
        }
        i++;
        j = n;
      }
      paramVariables = build(paramVariables, paramString.substring(j));
      if (paramVariables == null) {
        return null;
      }
      localArrayList.add(paramVariables);
      return (FormatPara[])localArrayList.toArray(new FormatPara[localArrayList.size()]);
    }
    
    public abstract Object evaluate();
  }
  
  private static class StringVarPara
    extends TextFormatter.FormatPara
  {
    private IndexedVariable mVar;
    private String mVariable;
    
    public StringVarPara(Variables paramVariables, String paramString)
    {
      super();
      this.mVariable = paramString;
      this.mVar = new IndexedVariable(paramString, paramVariables, false);
    }
    
    public Object evaluate()
    {
      String str1 = this.mVar.getString();
      String str2 = str1;
      if (str1 == null) {
        str2 = "";
      }
      return str2;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.util.TextFormatter
 * JD-Core Version:    0.7.0.1
 */