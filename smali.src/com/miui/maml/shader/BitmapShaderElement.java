package com.miui.maml.shader;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader.TileMode;
import com.miui.maml.ResourceManager;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import org.w3c.dom.Element;

public class BitmapShaderElement
  extends ShaderElement
{
  public static final String TAG_NAME = "BitmapShader";
  private Bitmap mBitmap = this.mRoot.getContext().mResourceManager.getBitmap(paramElement.getAttribute("src"));
  private Shader.TileMode mTileModeX;
  private Shader.TileMode mTileModeY;
  
  public BitmapShaderElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    resolveTileMode(paramElement);
    this.mShader = new BitmapShader(this.mBitmap, this.mTileModeX, this.mTileModeY);
  }
  
  private void resolveTileMode(Element paramElement)
  {
    paramElement = paramElement.getAttribute("tile").split(",");
    if (paramElement.length <= 1)
    {
      paramElement = this.mTileMode;
      this.mTileModeY = paramElement;
      this.mTileModeX = paramElement;
      return;
    }
    this.mTileModeX = ShaderElement.getTileMode(paramElement[0]);
    this.mTileModeY = ShaderElement.getTileMode(paramElement[1]);
  }
  
  public void onGradientStopsChanged() {}
  
  public void updateShader() {}
  
  public boolean updateShaderMatrix()
  {
    return false;
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.shader.BitmapShaderElement
 * JD-Core Version:    0.7.0.1
 */