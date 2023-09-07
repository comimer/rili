package com.miui.maml.elements;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.util.Log;
import android.view.MotionEvent;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.IndexedVariable;
import java.util.ArrayList;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class ElementGroup
  extends AnimatedScreenElement
{
  private static final String LOG_TAG = "MAML_ElementGroup";
  public static final String TAG_NAME = "ElementGroup";
  public static final String TAG_NAME1 = "Group";
  protected boolean mClip;
  protected ArrayList<ScreenElement> mElements = new ArrayList();
  private boolean mHovered;
  private IndexedVariable mIndexVar;
  private boolean mLayered;
  private LinearDirection mLinearDirection = LinearDirection.None;
  private boolean mTouched;
  
  private ElementGroup(ScreenElementRoot paramScreenElementRoot, IndexedVariable paramIndexedVariable)
  {
    super(null, paramScreenElementRoot);
    this.mIndexVar = paramIndexedVariable;
  }
  
  public ElementGroup(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    load(paramElement);
  }
  
  public static ElementGroup createArrayGroup(ScreenElementRoot paramScreenElementRoot, IndexedVariable paramIndexedVariable)
  {
    return new ElementGroup(paramScreenElementRoot, paramIndexedVariable);
  }
  
  public static boolean isArrayGroup(ScreenElement paramScreenElement)
  {
    boolean bool;
    if (((paramScreenElement instanceof ElementGroup)) && (((ElementGroup)paramScreenElement).isArray())) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  private void load(Element paramElement)
  {
    if (paramElement == null) {
      return;
    }
    this.mClip = Boolean.parseBoolean(getAttr(paramElement, "clip"));
    this.mLayered = Boolean.parseBoolean(getAttr(paramElement, "layered"));
    String str = getAttr(paramElement, "linear");
    if ("h".equalsIgnoreCase(str)) {
      this.mLinearDirection = LinearDirection.Horizontal;
    } else if ("v".equalsIgnoreCase(str)) {
      this.mLinearDirection = LinearDirection.Vertical;
    }
    paramElement = paramElement.getChildNodes();
    int i = paramElement.getLength();
    for (int j = 0; j < i; j++) {
      if (paramElement.item(j).getNodeType() == 1) {
        addElement(onCreateChild((Element)paramElement.item(j)));
      }
    }
  }
  
  public void acceptVisitor(ScreenElementVisitor paramScreenElementVisitor)
  {
    super.acceptVisitor(paramScreenElementVisitor);
    int i = this.mElements.size();
    for (int j = 0; j < i; j++) {
      ((ScreenElement)this.mElements.get(j)).acceptVisitor(paramScreenElementVisitor);
    }
  }
  
  public void addElement(ScreenElement paramScreenElement)
  {
    if (paramScreenElement != null)
    {
      paramScreenElement.setParent(this);
      this.mElements.add(paramScreenElement);
    }
  }
  
  protected void doRender(Canvas paramCanvas)
  {
    float f1 = getWidth();
    float f2 = getHeight();
    float f3 = getLeft(0.0F, f1);
    float f4 = getTop(0.0F, f2);
    int i;
    if ((this.mLayered) && (f1 > 0.0F) && (f2 > 0.0F)) {
      i = paramCanvas.saveLayerAlpha(f3, f4, f3 + f1, f4 + f2, getAlpha(), 31);
    } else {
      i = paramCanvas.save();
    }
    paramCanvas.translate(f3, f4);
    if ((f1 > 0.0F) && (f2 > 0.0F) && (this.mClip)) {
      paramCanvas.clipRect(0.0F, 0.0F, f1, f2);
    }
    doRenderChildren(paramCanvas);
    paramCanvas.restoreToCount(i);
  }
  
  protected void doRenderChildren(Canvas paramCanvas)
  {
    int i = this.mElements.size();
    for (int j = 0; j < i; j++)
    {
      ScreenElement localScreenElement = (ScreenElement)this.mElements.get(j);
      IndexedVariable localIndexedVariable = this.mIndexVar;
      if (localIndexedVariable != null) {
        localIndexedVariable.set(j);
      }
      localScreenElement.render(paramCanvas);
    }
  }
  
  protected void doTick(long paramLong)
  {
    super.doTick(paramLong);
    doTickChildren(paramLong);
  }
  
  protected void doTickChildren(long paramLong)
  {
    int i = this.mElements.size();
    float f1 = 0.0F;
    int j = 0;
    float f4;
    for (float f2 = 0.0F; j < i; f2 = f4)
    {
      Object localObject = (ScreenElement)this.mElements.get(j);
      IndexedVariable localIndexedVariable = this.mIndexVar;
      if (localIndexedVariable != null) {
        localIndexedVariable.set(j);
      }
      ((ScreenElement)localObject).tick(paramLong);
      float f3 = f1;
      f4 = f2;
      if (this.mLinearDirection != LinearDirection.None)
      {
        f3 = f1;
        f4 = f2;
        if ((localObject instanceof AnimatedScreenElement))
        {
          f3 = f1;
          f4 = f2;
          if (((ScreenElement)localObject).isVisible())
          {
            localObject = (AnimatedScreenElement)localObject;
            int k = 1.$SwitchMap$com$miui$maml$elements$ElementGroup$LinearDirection[this.mLinearDirection.ordinal()];
            float f5;
            if (k != 1)
            {
              if (k != 2)
              {
                f3 = f1;
                f4 = f2;
                break label292;
              }
              f3 = f1 + ((AnimatedScreenElement)localObject).getMarginTop();
              ((AnimatedScreenElement)localObject).setY(f3);
              f1 = f3 + (((AnimatedScreenElement)localObject).getHeight() + ((AnimatedScreenElement)localObject).getMarginBottom());
              f5 = ((AnimatedScreenElement)localObject).getWidth();
              f3 = f1;
              f4 = f2;
              if (f2 >= f5) {
                break label292;
              }
              f3 = f1;
              f2 = f5;
            }
            else
            {
              f3 = f1 + ((AnimatedScreenElement)localObject).getMarginLeft();
              ((AnimatedScreenElement)localObject).setX(f3);
              f1 = f3 + (((AnimatedScreenElement)localObject).getWidth() + ((AnimatedScreenElement)localObject).getMarginRight());
              f5 = ((AnimatedScreenElement)localObject).getHeight();
              f3 = f1;
              f4 = f2;
              if (f2 >= f5) {
                break label292;
              }
              f2 = f5;
              f3 = f1;
            }
            f4 = f2;
          }
        }
      }
      label292:
      j++;
      f1 = f3;
    }
    j = 1.$SwitchMap$com$miui$maml$elements$ElementGroup$LinearDirection[this.mLinearDirection.ordinal()];
    double d1;
    double d2;
    if (j != 1)
    {
      if (j == 2)
      {
        d1 = f1;
        setHeight(d1);
        d2 = f2;
        setWidth(d2);
        setActualHeight(descale(d1));
        setActualWidth(descale(d2));
      }
    }
    else
    {
      d2 = f1;
      setWidth(d2);
      d1 = f2;
      setHeight(d1);
      setActualWidth(descale(d2));
      setActualHeight(descale(d1));
    }
  }
  
  public ScreenElement findElement(String paramString)
  {
    ScreenElement localScreenElement = super.findElement(paramString);
    if (localScreenElement != null) {
      return localScreenElement;
    }
    int i = this.mElements.size();
    for (int j = 0; j < i; j++)
    {
      localScreenElement = ((ScreenElement)this.mElements.get(j)).findElement(paramString);
      if (localScreenElement != null) {
        return localScreenElement;
      }
    }
    return null;
  }
  
  public void finish()
  {
    super.finish();
    int i = this.mElements.size();
    for (int j = 0; j < i; j++) {
      try
      {
        ((ScreenElement)this.mElements.get(j)).finish();
      }
      catch (Exception localException)
      {
        Log.e("MAML_ElementGroup", localException.toString());
        localException.printStackTrace();
      }
    }
  }
  
  public ScreenElement getChild(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < this.mElements.size())) {
      return (ScreenElement)this.mElements.get(paramInt);
    }
    return null;
  }
  
  public ArrayList<ScreenElement> getElements()
  {
    return this.mElements;
  }
  
  protected float getParentLeft()
  {
    float f1 = getLeft();
    ElementGroup localElementGroup = this.mParent;
    float f2;
    if (localElementGroup == null) {
      f2 = 0.0F;
    } else {
      f2 = localElementGroup.getParentLeft();
    }
    return f1 + f2;
  }
  
  protected float getParentTop()
  {
    float f1 = getTop();
    ElementGroup localElementGroup = this.mParent;
    float f2;
    if (localElementGroup == null) {
      f2 = 0.0F;
    } else {
      f2 = localElementGroup.getParentTop();
    }
    return f1 + f2;
  }
  
  public int getSize()
  {
    return this.mElements.size();
  }
  
  public void init()
  {
    super.init();
    int i = this.mElements.size();
    for (int j = 0; j < i; j++)
    {
      IndexedVariable localIndexedVariable = this.mIndexVar;
      if (localIndexedVariable != null) {
        localIndexedVariable.set(j);
      }
      ((ScreenElement)this.mElements.get(j)).init();
    }
  }
  
  public boolean isArray()
  {
    boolean bool;
    if (this.mIndexVar != null) {
      bool = true;
    } else {
      bool = false;
    }
    return bool;
  }
  
  public boolean isLayered()
  {
    return this.mLayered;
  }
  
  protected ScreenElement onCreateChild(Element paramElement)
  {
    return getContext().mFactory.createInstance(paramElement, this.mRoot);
  }
  
  public boolean onHover(MotionEvent paramMotionEvent)
  {
    boolean bool = isVisible();
    int i = 0;
    if (!bool) {
      return false;
    }
    bool = touched(paramMotionEvent.getX(), paramMotionEvent.getY());
    if ((this.mClip) && (!bool))
    {
      if (!this.mHovered) {
        return false;
      }
      paramMotionEvent.setAction(10);
    }
    int j = this.mElements.size();
    bool = true;
    for (int k = j - 1;; k--)
    {
      j = i;
      if (k < 0) {
        break;
      }
      ScreenElement localScreenElement = (ScreenElement)this.mElements.get(k);
      IndexedVariable localIndexedVariable = this.mIndexVar;
      if (localIndexedVariable != null) {
        localIndexedVariable.set(k);
      }
      if (localScreenElement.onHover(paramMotionEvent))
      {
        j = 1;
        break;
      }
    }
    if (j == 0) {
      bool = super.onHover(paramMotionEvent);
    }
    this.mHovered = bool;
    return bool;
  }
  
  public boolean onTouch(MotionEvent paramMotionEvent)
  {
    boolean bool = isVisible();
    int i = 0;
    if (!bool) {
      return false;
    }
    int j = paramMotionEvent.getAction();
    bool = touched(paramMotionEvent.getX(), paramMotionEvent.getY());
    if ((this.mClip) && (!bool))
    {
      if (!this.mTouched) {
        return false;
      }
      paramMotionEvent.setAction(3);
    }
    int k = this.mElements.size();
    int m = this.mRoot.version();
    bool = true;
    if (m >= 2) {
      m = 1;
    } else {
      m = 0;
    }
    Object localObject1;
    Object localObject2;
    if (m != 0) {
      for (n = k - 1;; n--)
      {
        m = i;
        if (n < 0) {
          break label229;
        }
        localObject1 = (ScreenElement)this.mElements.get(n);
        localObject2 = this.mIndexVar;
        if (localObject2 != null) {
          ((IndexedVariable)localObject2).set(n);
        }
        if (((ScreenElement)localObject1).onTouch(paramMotionEvent)) {
          break;
        }
      }
    }
    for (int n = 0;; n++)
    {
      m = i;
      if (n >= k) {
        break;
      }
      localObject2 = (ScreenElement)this.mElements.get(n);
      localObject1 = this.mIndexVar;
      if (localObject1 != null) {
        ((IndexedVariable)localObject1).set(n);
      }
      if (((ScreenElement)localObject2).onTouch(paramMotionEvent))
      {
        m = 1;
        break;
      }
    }
    label229:
    paramMotionEvent.setAction(j);
    if (m == 0) {
      bool = super.onTouch(paramMotionEvent);
    }
    this.mTouched = bool;
    return bool;
  }
  
  protected void onVisibilityChange(boolean paramBoolean)
  {
    super.onVisibilityChange(paramBoolean);
    int i = this.mElements.size();
    for (int j = 0; j < i; j++) {
      ((ScreenElement)this.mElements.get(j)).updateVisibility();
    }
  }
  
  public void pause()
  {
    super.pause();
    int i = this.mElements.size();
    for (int j = 0; j < i; j++) {
      ((ScreenElement)this.mElements.get(j)).pause();
    }
  }
  
  public void pauseAnim(long paramLong)
  {
    super.pauseAnim(paramLong);
    int i = this.mElements.size();
    for (int j = 0; j < i; j++) {
      ((ScreenElement)this.mElements.get(j)).pauseAnim(paramLong);
    }
  }
  
  public void playAnim(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean1, boolean paramBoolean2)
  {
    super.playAnim(paramLong1, paramLong2, paramLong3, paramBoolean1, paramBoolean2);
    int i = this.mElements.size();
    for (int j = 0; j < i; j++)
    {
      IndexedVariable localIndexedVariable = this.mIndexVar;
      if (localIndexedVariable != null) {
        localIndexedVariable.set(j);
      }
      ((ScreenElement)this.mElements.get(j)).playAnim(paramLong1, paramLong2, paramLong3, paramBoolean1, paramBoolean2);
    }
  }
  
  public void removeAllElements()
  {
    this.mElements.clear();
    requestUpdate();
  }
  
  public void removeElement(ScreenElement paramScreenElement)
  {
    this.mElements.remove(paramScreenElement);
    requestUpdate();
  }
  
  public void reset(long paramLong)
  {
    super.reset(paramLong);
    int i = this.mElements.size();
    for (int j = 0; j < i; j++) {
      ((ScreenElement)this.mElements.get(j)).reset(paramLong);
    }
  }
  
  public void resume()
  {
    super.resume();
    int i = this.mElements.size();
    for (int j = 0; j < i; j++) {
      ((ScreenElement)this.mElements.get(j)).resume();
    }
  }
  
  public void resumeAnim(long paramLong)
  {
    super.resumeAnim(paramLong);
    int i = this.mElements.size();
    for (int j = 0; j < i; j++) {
      ((ScreenElement)this.mElements.get(j)).resumeAnim(paramLong);
    }
  }
  
  public void setAnim(String[] paramArrayOfString)
  {
    super.setAnim(paramArrayOfString);
    int i = this.mElements.size();
    for (int j = 0; j < i; j++)
    {
      IndexedVariable localIndexedVariable = this.mIndexVar;
      if (localIndexedVariable != null) {
        localIndexedVariable.set(j);
      }
      ((ScreenElement)this.mElements.get(j)).setAnim(paramArrayOfString);
    }
  }
  
  public void setClip(boolean paramBoolean)
  {
    this.mClip = paramBoolean;
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    super.setColorFilter(paramColorFilter);
    int i = this.mElements.size();
    for (int j = 0; j < i; j++) {
      ((ScreenElement)this.mElements.get(j)).setColorFilter(paramColorFilter);
    }
  }
  
  public void showCategory(String paramString, boolean paramBoolean)
  {
    super.showCategory(paramString, paramBoolean);
    int i = this.mElements.size();
    for (int j = 0; j < i; j++) {
      ((ScreenElement)this.mElements.get(j)).showCategory(paramString, paramBoolean);
    }
  }
  
  private static enum LinearDirection
  {
    static
    {
      LinearDirection localLinearDirection1 = new LinearDirection("None", 0);
      None = localLinearDirection1;
      LinearDirection localLinearDirection2 = new LinearDirection("Horizontal", 1);
      Horizontal = localLinearDirection2;
      LinearDirection localLinearDirection3 = new LinearDirection("Vertical", 2);
      Vertical = localLinearDirection3;
      $VALUES = new LinearDirection[] { localLinearDirection1, localLinearDirection2, localLinearDirection3 };
    }
    
    private LinearDirection() {}
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.ElementGroup
 * JD-Core Version:    0.7.0.1
 */