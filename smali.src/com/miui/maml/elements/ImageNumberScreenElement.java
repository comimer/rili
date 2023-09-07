package com.miui.maml.elements;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.Log;
import com.miui.maml.ResourceManager;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.Expression;
import com.miui.maml.util.Utils;
import java.util.ArrayList;
import java.util.Iterator;
import org.w3c.dom.Element;

public class ImageNumberScreenElement
  extends ImageScreenElement
{
  public static final String TAG_NAME = "ImageNumber";
  public static final String TAG_NAME1 = "ImageChars";
  private String LOG_TAG = "ImageNumberScreenElement";
  private int mBmpHeight;
  private int mBmpWidth;
  private Bitmap mCachedBmp;
  private Canvas mCachedCanvas;
  private ArrayList<CharName> mNameMap;
  private Expression mNumExpression = Expression.build(getVariables(), getAttr(paramElement, "number"));
  private String mOldSrc;
  private double mPreNumber = 4.9E-324D;
  private String mPreStr;
  private int mSpace;
  private Expression mSpaceExpression = Expression.build(getVariables(), getAttr(paramElement, "space"));
  private Expression mStrExpression = Expression.build(getVariables(), getAttr(paramElement, "string"));
  private String mStrValue;
  
  public ImageNumberScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    paramElement = getAttr(paramElement, "charNameMap");
    if (!TextUtils.isEmpty(paramElement))
    {
      this.mNameMap = new ArrayList();
      for (paramScreenElementRoot : paramElement.split(",")) {
        this.mNameMap.add(new CharName(paramScreenElementRoot.charAt(0), paramScreenElementRoot.substring(1)));
      }
    }
  }
  
  private String charToStr(char paramChar)
  {
    Object localObject = this.mNameMap;
    if (localObject != null)
    {
      Iterator localIterator = ((ArrayList)localObject).iterator();
      while (localIterator.hasNext())
      {
        localObject = (CharName)localIterator.next();
        if (((CharName)localObject).ch == paramChar) {
          return ((CharName)localObject).name;
        }
      }
    }
    if (paramChar == '.') {
      return "dot";
    }
    return String.valueOf(paramChar);
  }
  
  private Bitmap getNumberBitmap(String paramString1, String paramString2)
  {
    paramString1 = Utils.addFileNameSuffix(paramString1, paramString2);
    return getContext().mResourceManager.getBitmap(paramString1);
  }
  
  protected void doTick(long paramLong)
  {
    super.doTick(paramLong);
    if ((this.mNumExpression == null) && (this.mStrExpression == null) && (this.mStrValue == null))
    {
      if (this.mCachedBmp != null)
      {
        this.mCachedBmp = null;
        this.mPreStr = null;
        this.mCurrentBitmap.setBitmap(null);
        updateBitmapVars();
      }
      return;
    }
    Object localObject1 = getSrc();
    boolean bool = TextUtils.equals((CharSequence)localObject1, this.mOldSrc) ^ true;
    Object localObject2 = this.mNumExpression;
    if (localObject2 != null)
    {
      double d = evaluate((Expression)localObject2);
      if ((d == this.mPreNumber) && (!bool)) {
        return;
      }
      this.mPreNumber = d;
      localObject2 = Utils.doubleToString(d);
    }
    else
    {
      localObject3 = this.mStrExpression;
      if ((localObject3 == null) && (this.mStrValue == null))
      {
        localObject2 = null;
      }
      else
      {
        localObject2 = this.mStrValue;
        if (localObject2 == null) {
          localObject2 = evaluateStr((Expression)localObject3);
        }
        if ((TextUtils.equals((CharSequence)localObject2, this.mPreStr)) && (!bool)) {
          return;
        }
        this.mPreStr = ((String)localObject2);
      }
    }
    Object localObject3 = this.mCachedBmp;
    if (localObject3 != null) {
      ((Bitmap)localObject3).eraseColor(0);
    }
    this.mOldSrc = ((String)localObject1);
    this.mBmpWidth = 0;
    int j;
    if (localObject2 != null) {
      j = ((String)localObject2).length();
    } else {
      j = 0;
    }
    for (int k = 0; k < j; k++)
    {
      localObject3 = getNumberBitmap((String)localObject1, charToStr(((String)localObject2).charAt(k)));
      if (localObject3 == null)
      {
        localObject3 = this.LOG_TAG;
        localObject1 = new StringBuilder();
        ((StringBuilder)localObject1).append("Fail to get bitmap for number ");
        ((StringBuilder)localObject1).append(String.valueOf(((String)localObject2).charAt(k)));
        Log.e((String)localObject3, ((StringBuilder)localObject1).toString());
        return;
      }
      int m = this.mBmpWidth + ((Bitmap)localObject3).getWidth();
      int n = ((Bitmap)localObject3).getHeight();
      Bitmap localBitmap = this.mCachedBmp;
      int i1;
      if (localBitmap == null) {
        i1 = 0;
      } else {
        i1 = localBitmap.getWidth();
      }
      localBitmap = this.mCachedBmp;
      if (localBitmap == null) {
        bool = false;
      } else {
        i = localBitmap.getHeight();
      }
      if ((m > i1) || (n > i))
      {
        localBitmap = this.mCachedBmp;
        int i2 = i1;
        if (m > i1)
        {
          i1 = j - k;
          i2 = this.mBmpWidth + ((Bitmap)localObject3).getWidth() * i1 + this.mSpace * (i1 - 1);
        }
        i1 = n;
        if (n <= i) {
          i1 = i;
        }
        this.mBmpHeight = i1;
        Object localObject4 = Bitmap.createBitmap(i2, i1, Bitmap.Config.ARGB_8888);
        this.mCachedBmp = ((Bitmap)localObject4);
        ((Bitmap)localObject4).setDensity(((Bitmap)localObject3).getDensity());
        this.mCurrentBitmap.setBitmap(this.mCachedBmp);
        localObject4 = new Canvas(this.mCachedBmp);
        this.mCachedCanvas = ((Canvas)localObject4);
        if (localBitmap != null) {
          ((Canvas)localObject4).drawBitmap(localBitmap, 0.0F, 0.0F, null);
        }
      }
      this.mCachedCanvas.drawBitmap((Bitmap)localObject3, this.mBmpWidth, 0.0F, null);
      int i = this.mBmpWidth + ((Bitmap)localObject3).getWidth();
      this.mBmpWidth = i;
      if (k < j - 1) {
        this.mBmpWidth = (i + this.mSpace);
      }
    }
    this.mCurrentBitmap.updateVersion();
    updateBitmapVars();
  }
  
  public void finish()
  {
    super.finish();
    this.mPreNumber = 4.9E-324D;
    this.mPreStr = null;
  }
  
  protected int getBitmapHeight()
  {
    return this.mBmpHeight;
  }
  
  protected int getBitmapWidth()
  {
    return this.mBmpWidth;
  }
  
  public void init()
  {
    super.init();
    Expression localExpression = this.mSpaceExpression;
    int i;
    if (localExpression == null) {
      i = 0;
    } else {
      i = (int)scale(localExpression.evaluate());
    }
    this.mSpace = i;
    this.mCurrentBitmap.setBitmap(this.mCachedBmp);
  }
  
  public void setValue(double paramDouble)
  {
    setValue(Utils.doubleToString(paramDouble));
  }
  
  public void setValue(String paramString)
  {
    this.mStrValue = paramString;
    requestUpdate();
  }
  
  protected void updateBitmapImpl(boolean paramBoolean)
  {
    this.mCurrentBitmap.setBitmap(this.mCachedBmp);
    updateBitmapVars();
  }
  
  private class CharName
  {
    public char ch;
    public String name;
    
    public CharName(char paramChar, String paramString)
    {
      this.ch = ((char)paramChar);
      this.name = paramString;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.ImageNumberScreenElement
 * JD-Core Version:    0.7.0.1
 */