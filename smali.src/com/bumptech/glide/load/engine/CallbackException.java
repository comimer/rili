package com.bumptech.glide.load.engine;

final class CallbackException
  extends RuntimeException
{
  private static final long serialVersionUID = -7530898992688511851L;
  
  CallbackException(Throwable paramThrowable)
  {
    super("Unexpected exception thrown by non-Glide code", paramThrowable);
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.bumptech.glide.load.engine.CallbackException
 * JD-Core Version:    0.7.0.1
 */