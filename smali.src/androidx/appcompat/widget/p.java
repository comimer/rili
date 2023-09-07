package androidx.appcompat.widget;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import androidx.core.graphics.drawable.g;

class p
{
  private static final int[] c = { 16843067, 16843068 };
  private final ProgressBar a;
  private Bitmap b;
  
  p(ProgressBar paramProgressBar)
  {
    this.a = paramProgressBar;
  }
  
  private Shape a()
  {
    return new RoundRectShape(new float[] { 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F }, null, null);
  }
  
  private Drawable e(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if ((paramDrawable instanceof AnimationDrawable))
    {
      paramDrawable = (AnimationDrawable)paramDrawable;
      int i = paramDrawable.getNumberOfFrames();
      localObject = new AnimationDrawable();
      ((AnimationDrawable)localObject).setOneShot(paramDrawable.isOneShot());
      for (int j = 0; j < i; j++)
      {
        Drawable localDrawable = d(paramDrawable.getFrame(j), true);
        localDrawable.setLevel(10000);
        ((AnimationDrawable)localObject).addFrame(localDrawable, paramDrawable.getDuration(j));
      }
      ((Drawable)localObject).setLevel(10000);
    }
    return localObject;
  }
  
  Bitmap b()
  {
    return this.b;
  }
  
  void c(AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = z0.v(this.a.getContext(), paramAttributeSet, c, paramInt, 0);
    Drawable localDrawable = paramAttributeSet.h(0);
    if (localDrawable != null) {
      this.a.setIndeterminateDrawable(e(localDrawable));
    }
    localDrawable = paramAttributeSet.h(1);
    if (localDrawable != null) {
      this.a.setProgressDrawable(d(localDrawable, false));
    }
    paramAttributeSet.w();
  }
  
  Drawable d(Drawable paramDrawable, boolean paramBoolean)
  {
    Object localObject1;
    Object localObject2;
    if ((paramDrawable instanceof g))
    {
      localObject1 = (g)paramDrawable;
      localObject2 = ((g)localObject1).b();
      if (localObject2 != null) {
        ((g)localObject1).a(d((Drawable)localObject2, paramBoolean));
      }
    }
    else
    {
      if ((paramDrawable instanceof LayerDrawable))
      {
        paramDrawable = (LayerDrawable)paramDrawable;
        int i = paramDrawable.getNumberOfLayers();
        localObject2 = new Drawable[i];
        int j = 0;
        for (int k = 0; k < i; k++)
        {
          int m = paramDrawable.getId(k);
          localObject1 = paramDrawable.getDrawable(k);
          if ((m != 16908301) && (m != 16908303)) {
            paramBoolean = false;
          } else {
            paramBoolean = true;
          }
          localObject2[k] = d((Drawable)localObject1, paramBoolean);
        }
        localObject1 = new LayerDrawable((Drawable[])localObject2);
        for (k = j; k < i; k++)
        {
          ((LayerDrawable)localObject1).setId(k, paramDrawable.getId(k));
          a.a(paramDrawable, (LayerDrawable)localObject1, k);
        }
        return localObject1;
      }
      if ((paramDrawable instanceof BitmapDrawable))
      {
        paramDrawable = (BitmapDrawable)paramDrawable;
        localObject2 = paramDrawable.getBitmap();
        if (this.b == null) {
          this.b = ((Bitmap)localObject2);
        }
        localObject1 = new ShapeDrawable(a());
        localObject2 = new BitmapShader((Bitmap)localObject2, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP);
        ((ShapeDrawable)localObject1).getPaint().setShader((Shader)localObject2);
        ((ShapeDrawable)localObject1).getPaint().setColorFilter(paramDrawable.getPaint().getColorFilter());
        paramDrawable = (Drawable)localObject1;
        if (paramBoolean) {
          paramDrawable = new ClipDrawable((Drawable)localObject1, 3, 1);
        }
        return paramDrawable;
      }
    }
    return paramDrawable;
  }
  
  private static class a
  {
    public static void a(LayerDrawable paramLayerDrawable1, LayerDrawable paramLayerDrawable2, int paramInt)
    {
      paramLayerDrawable2.setLayerGravity(paramInt, paramLayerDrawable1.getLayerGravity(paramInt));
      paramLayerDrawable2.setLayerWidth(paramInt, paramLayerDrawable1.getLayerWidth(paramInt));
      paramLayerDrawable2.setLayerHeight(paramInt, paramLayerDrawable1.getLayerHeight(paramInt));
      paramLayerDrawable2.setLayerInsetLeft(paramInt, paramLayerDrawable1.getLayerInsetLeft(paramInt));
      paramLayerDrawable2.setLayerInsetRight(paramInt, paramLayerDrawable1.getLayerInsetRight(paramInt));
      paramLayerDrawable2.setLayerInsetTop(paramInt, paramLayerDrawable1.getLayerInsetTop(paramInt));
      paramLayerDrawable2.setLayerInsetBottom(paramInt, paramLayerDrawable1.getLayerInsetBottom(paramInt));
      paramLayerDrawable2.setLayerInsetStart(paramInt, paramLayerDrawable1.getLayerInsetStart(paramInt));
      paramLayerDrawable2.setLayerInsetEnd(paramInt, paramLayerDrawable1.getLayerInsetEnd(paramInt));
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     androidx.appcompat.widget.p
 * JD-Core Version:    0.7.0.1
 */