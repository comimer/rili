package com.miui.maml.elements;

import android.opengl.GLSurfaceView;
import android.opengl.GLSurfaceView.Renderer;
import android.util.Log;
import android.view.View;
import android.view.WindowManager.LayoutParams;
import com.miui.maml.CommandTrigger;
import com.miui.maml.CommandTriggers;
import com.miui.maml.RendererController;
import com.miui.maml.RendererController.EmptyListener;
import com.miui.maml.ScreenContext;
import com.miui.maml.ScreenElementRoot;
import com.miui.maml.data.IndexedVariable;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import org.w3c.dom.Element;

public class GLLayerScreenElement
  extends ViewHolderScreenElement
{
  private static final String LOG_TAG = "MAML GLLayerScreenElement";
  public static final String TAG_NAME = "GLLayer";
  private IndexedVariable mCanvasVar;
  private IndexedVariable mHVar;
  private WindowManager.LayoutParams mLayoutParams;
  private CommandTrigger mOnSurfaceChangeCommands;
  private CommandTrigger mOnSurfaceCreateCommands;
  private CommandTrigger mOnSurfaceDrawCommands;
  private GLSurfaceView mView;
  private IndexedVariable mViewVar;
  private IndexedVariable mWVar;
  
  public GLLayerScreenElement(Element paramElement, ScreenElementRoot paramScreenElementRoot)
  {
    super(paramElement, paramScreenElementRoot);
    load(paramElement);
  }
  
  private void load(Element paramElement)
  {
    this.mView = new GLSurfaceView(this.mRoot.getContext().mContext);
    paramElement = new WindowManager.LayoutParams((int)this.mRoot.getWidth(), (int)this.mRoot.getHeight());
    this.mLayoutParams = paramElement;
    paramElement.format = 1;
    paramElement.flags = 256;
    this.mView.setRenderer(new GLRenderer(null));
    int i;
    if (this.mController != null) {
      i = 0;
    } else {
      i = 1;
    }
    this.mView.setRenderMode(i);
    paramElement = this.mTriggers;
    if (paramElement != null)
    {
      this.mOnSurfaceCreateCommands = paramElement.find("create");
      this.mOnSurfaceChangeCommands = this.mTriggers.find("change");
      this.mOnSurfaceDrawCommands = this.mTriggers.find("draw");
    }
    if (this.mOnSurfaceDrawCommands == null) {
      Log.e("GLLayerScreenElement", "no draw commands.");
    }
    paramElement = getVariables();
    this.mCanvasVar = new IndexedVariable("__objGLCanvas", paramElement, false);
    this.mViewVar = new IndexedVariable("__objGLView", paramElement, false);
    this.mWVar = new IndexedVariable("__w", paramElement, true);
    this.mHVar = new IndexedVariable("__h", paramElement, true);
  }
  
  protected void doTick(long paramLong)
  {
    doTickSelf(paramLong);
    updateView();
  }
  
  protected View getView()
  {
    return this.mView;
  }
  
  public void init()
  {
    this.mViewVar.set(this.mView);
    super.init();
  }
  
  protected void onControllerCreated(RendererController paramRendererController)
  {
    paramRendererController.setListener(new ProxyListener(null));
  }
  
  private class GLRenderer
    implements GLSurfaceView.Renderer
  {
    private GLRenderer() {}
    
    public void onDrawFrame(GL10 paramGL10)
    {
      if (GLLayerScreenElement.this.mOnSurfaceDrawCommands != null)
      {
        GLLayerScreenElement.this.mCanvasVar.set(paramGL10);
        GLLayerScreenElement.this.mOnSurfaceDrawCommands.perform();
        GLLayerScreenElement.this.mCanvasVar.set(null);
      }
      paramGL10 = GLLayerScreenElement.this.mController;
      if (paramGL10 != null) {
        paramGL10.doneRender();
      }
    }
    
    public void onSurfaceChanged(GL10 paramGL10, int paramInt1, int paramInt2)
    {
      if (GLLayerScreenElement.this.mOnSurfaceChangeCommands != null)
      {
        GLLayerScreenElement.this.mCanvasVar.set(paramGL10);
        GLLayerScreenElement.this.mWVar.set(paramInt1);
        GLLayerScreenElement.this.mHVar.set(paramInt2);
        GLLayerScreenElement.this.mOnSurfaceChangeCommands.perform();
        GLLayerScreenElement.this.mCanvasVar.set(null);
      }
    }
    
    public void onSurfaceCreated(GL10 paramGL10, EGLConfig paramEGLConfig)
    {
      if (GLLayerScreenElement.this.mOnSurfaceCreateCommands != null)
      {
        GLLayerScreenElement.this.mCanvasVar.set(paramGL10);
        GLLayerScreenElement.this.mOnSurfaceCreateCommands.perform();
        GLLayerScreenElement.this.mCanvasVar.set(null);
      }
    }
  }
  
  private class ProxyListener
    extends RendererController.EmptyListener
  {
    private ProxyListener() {}
    
    public void doRender()
    {
      GLLayerScreenElement.this.mView.requestRender();
    }
    
    public void forceUpdate()
    {
      GLLayerScreenElement.this.mRoot.getRendererController().forceUpdate();
    }
    
    public void tick(long paramLong) {}
    
    public void triggerUpdate()
    {
      GLLayerScreenElement.this.mRoot.getRendererController().triggerUpdate();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.GLLayerScreenElement
 * JD-Core Version:    0.7.0.1
 */