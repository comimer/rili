package com.miui.maml.elements.video;

import android.content.Context;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.View.MeasureSpec;

class NormalVideoView
  extends BaseVideoView
{
  public NormalVideoView(Context paramContext)
  {
    super(paramContext);
  }
  
  protected void addSurfaceHolderCallback()
  {
    getHolder().addCallback(this.mSHCallback);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.mScaleMode == 3)
    {
      int i = View.getDefaultSize(this.mVideoWidth, paramInt1);
      int j = View.getDefaultSize(this.mVideoHeight, paramInt2);
      int k = i;
      int m = j;
      if (this.mVideoWidth > 0)
      {
        k = i;
        m = j;
        if (this.mVideoHeight > 0)
        {
          int n = View.MeasureSpec.getMode(paramInt1);
          i = View.MeasureSpec.getSize(paramInt1);
          k = View.MeasureSpec.getMode(paramInt2);
          paramInt2 = View.MeasureSpec.getSize(paramInt2);
          if ((n == 1073741824) && (k == 1073741824))
          {
            k = this.mVideoWidth;
            paramInt1 = this.mVideoHeight;
            if (k * paramInt2 < i * paramInt1)
            {
              paramInt1 = k * paramInt2 / paramInt1;
              break label240;
            }
            if (k * paramInt2 <= i * paramInt1) {
              break label230;
            }
            paramInt1 = paramInt1 * i / k;
          }
          else
          {
            if (n != 1073741824) {
              break label185;
            }
            paramInt1 = this.mVideoHeight * i / this.mVideoWidth;
            if ((k == -2147483648) && (paramInt1 > paramInt2)) {
              break label230;
            }
          }
          for (;;)
          {
            k = i;
            m = paramInt1;
            break;
            label185:
            if (k == 1073741824)
            {
              m = this.mVideoWidth * paramInt2 / this.mVideoHeight;
              k = m;
              paramInt1 = paramInt2;
              if (n == -2147483648)
              {
                k = m;
                paramInt1 = paramInt2;
                if (m > i)
                {
                  label230:
                  paramInt1 = i;
                  break label240;
                }
              }
            }
            label240:
            int i1;
            do
            {
              do
              {
                paramInt2 = paramInt1;
                paramInt1 = k;
                k = paramInt1;
                m = paramInt2;
                break;
                j = this.mVideoWidth;
                i1 = this.mVideoHeight;
                if ((k == -2147483648) && (i1 > paramInt2))
                {
                  m = paramInt2 * j / i1;
                }
                else
                {
                  m = j;
                  paramInt2 = i1;
                }
                k = m;
                paramInt1 = paramInt2;
              } while (n != -2147483648);
              k = m;
              paramInt1 = paramInt2;
            } while (m <= i);
            paramInt1 = i1 * i / j;
          }
        }
      }
      setMeasuredDimension(k, m);
    }
    else
    {
      super.onMeasure(paramInt1, paramInt2);
    }
  }
  
  protected void onSurfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    this.mSurface = paramSurfaceHolder.getSurface();
  }
  
  protected void onSurfaceDestroyed()
  {
    this.mSurface = null;
  }
  
  protected void setFormat(int paramInt)
  {
    getHolder().setFormat(paramInt);
  }
  
  protected void updateVideoSize()
  {
    requestLayout();
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.video.NormalVideoView
 * JD-Core Version:    0.7.0.1
 */