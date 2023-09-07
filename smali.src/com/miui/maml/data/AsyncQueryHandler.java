package com.miui.maml.data;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.io.Closeable;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import miuix.core.util.c;

public abstract class AsyncQueryHandler
  extends Handler
{
  private static final int EVENT_ARG_DELETE = 4;
  private static final int EVENT_ARG_INSERT = 2;
  private static final int EVENT_ARG_QUERY = 1;
  private static final int EVENT_ARG_UPDATE = 3;
  private static final String TAG = "AsyncQuery";
  private static final boolean localLOGV = false;
  private static Looper sLooper;
  final WeakReference<ContentResolver> mResolver;
  private Handler mWorkerThreadHandler;
  
  public AsyncQueryHandler(ContentResolver paramContentResolver)
  {
    this.mResolver = new WeakReference(paramContentResolver);
    try
    {
      if (sLooper == null)
      {
        paramContentResolver = new android/os/HandlerThread;
        paramContentResolver.<init>("AsyncQueryWorker");
        paramContentResolver.start();
        sLooper = paramContentResolver.getLooper();
      }
      this.mWorkerThreadHandler = createHandler(sLooper);
      return;
    }
    finally {}
  }
  
  public AsyncQueryHandler(Looper paramLooper, ContentResolver paramContentResolver)
  {
    super(paramLooper);
    this.mResolver = new WeakReference(paramContentResolver);
    try
    {
      if (sLooper == null)
      {
        paramLooper = new android/os/HandlerThread;
        paramLooper.<init>("AsyncQueryWorker");
        paramLooper.start();
        sLooper = paramLooper.getLooper();
      }
      this.mWorkerThreadHandler = createHandler(sLooper);
      return;
    }
    finally {}
  }
  
  public final void cancelOperation(int paramInt)
  {
    this.mWorkerThreadHandler.removeMessages(paramInt);
  }
  
  protected Handler createHandler(Looper paramLooper)
  {
    return new WorkerHandler(paramLooper);
  }
  
  void doUpdateOfCursor(Cursor paramCursor) {}
  
  public void handleMessage(Message paramMessage)
  {
    WorkerArgs localWorkerArgs = (WorkerArgs)paramMessage.obj;
    int i = paramMessage.what;
    int j = paramMessage.arg1;
    if (j != 1)
    {
      if (j != 2)
      {
        if (j != 3)
        {
          if (j == 4) {
            onDeleteComplete(i, localWorkerArgs.cookie, ((Integer)localWorkerArgs.result).intValue());
          }
        }
        else {
          onUpdateComplete(i, localWorkerArgs.cookie, ((Integer)localWorkerArgs.result).intValue());
        }
      }
      else {
        onInsertComplete(i, localWorkerArgs.cookie, (Uri)localWorkerArgs.result);
      }
    }
    else {
      onQueryComplete(i, localWorkerArgs.cookie);
    }
  }
  
  protected void onDeleteComplete(int paramInt1, Object paramObject, int paramInt2) {}
  
  protected void onInsertComplete(int paramInt, Object paramObject, Uri paramUri) {}
  
  protected void onQueryComplete(int paramInt, Object paramObject) {}
  
  protected void onUpdateComplete(int paramInt1, Object paramObject, int paramInt2) {}
  
  public final void startDelete(int paramInt, Object paramObject, Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    Message localMessage = this.mWorkerThreadHandler.obtainMessage(paramInt);
    localMessage.arg1 = 4;
    WorkerArgs localWorkerArgs = new WorkerArgs();
    localWorkerArgs.handler = this;
    localWorkerArgs.uri = paramUri;
    localWorkerArgs.cookie = paramObject;
    localWorkerArgs.selection = paramString;
    localWorkerArgs.selectionArgs = paramArrayOfString;
    localMessage.obj = localWorkerArgs;
    this.mWorkerThreadHandler.sendMessage(localMessage);
  }
  
  public final void startInsert(int paramInt, Object paramObject, Uri paramUri, ContentValues paramContentValues)
  {
    Message localMessage = this.mWorkerThreadHandler.obtainMessage(paramInt);
    localMessage.arg1 = 2;
    WorkerArgs localWorkerArgs = new WorkerArgs();
    localWorkerArgs.handler = this;
    localWorkerArgs.uri = paramUri;
    localWorkerArgs.cookie = paramObject;
    localWorkerArgs.values = paramContentValues;
    localMessage.obj = localWorkerArgs;
    this.mWorkerThreadHandler.sendMessage(localMessage);
  }
  
  public void startQuery(int paramInt, Object paramObject, Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    Message localMessage = this.mWorkerThreadHandler.obtainMessage(paramInt);
    localMessage.arg1 = 1;
    WorkerArgs localWorkerArgs = new WorkerArgs();
    localWorkerArgs.handler = this;
    localWorkerArgs.uri = paramUri;
    localWorkerArgs.projection = paramArrayOfString1;
    localWorkerArgs.selection = paramString1;
    localWorkerArgs.selectionArgs = paramArrayOfString2;
    localWorkerArgs.orderBy = paramString2;
    localWorkerArgs.cookie = paramObject;
    localMessage.obj = localWorkerArgs;
    this.mWorkerThreadHandler.sendMessage(localMessage);
  }
  
  public final void startUpdate(int paramInt, Object paramObject, Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    Message localMessage = this.mWorkerThreadHandler.obtainMessage(paramInt);
    localMessage.arg1 = 3;
    WorkerArgs localWorkerArgs = new WorkerArgs();
    localWorkerArgs.handler = this;
    localWorkerArgs.uri = paramUri;
    localWorkerArgs.cookie = paramObject;
    localWorkerArgs.values = paramContentValues;
    localWorkerArgs.selection = paramString;
    localWorkerArgs.selectionArgs = paramArrayOfString;
    localMessage.obj = localWorkerArgs;
    this.mWorkerThreadHandler.sendMessage(localMessage);
  }
  
  protected static final class WorkerArgs
  {
    public Object cookie;
    public Handler handler;
    public String orderBy;
    public String[] projection;
    public Object result;
    public String selection;
    public String[] selectionArgs;
    public Uri uri;
    public ContentValues values;
  }
  
  protected class WorkerHandler
    extends Handler
  {
    public WorkerHandler(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      Object localObject1 = (ContentResolver)AsyncQueryHandler.this.mResolver.get();
      if (localObject1 == null) {
        return;
      }
      AsyncQueryHandler.WorkerArgs localWorkerArgs = (AsyncQueryHandler.WorkerArgs)paramMessage.obj;
      int i = paramMessage.what;
      int j = paramMessage.arg1;
      if (j != 1)
      {
        if (j != 2)
        {
          if (j != 3)
          {
            if (j == 4) {
              localWorkerArgs.result = Integer.valueOf(((ContentResolver)localObject1).delete(localWorkerArgs.uri, localWorkerArgs.selection, localWorkerArgs.selectionArgs));
            }
          }
          else {
            localWorkerArgs.result = Integer.valueOf(((ContentResolver)localObject1).update(localWorkerArgs.uri, localWorkerArgs.values, localWorkerArgs.selection, localWorkerArgs.selectionArgs));
          }
        }
        else {
          localWorkerArgs.result = ((ContentResolver)localObject1).insert(localWorkerArgs.uri, localWorkerArgs.values);
        }
      }
      else
      {
        try
        {
          Cursor localCursor = ((ContentResolver)localObject1).query(localWorkerArgs.uri, localWorkerArgs.projection, localWorkerArgs.selection, localWorkerArgs.selectionArgs, localWorkerArgs.orderBy);
          localObject1 = localCursor;
          if (localCursor != null)
          {
            localCursor.getCount();
            localObject1 = localCursor;
          }
        }
        catch (Exception localException)
        {
          Log.w("AsyncQuery", "Exception thrown during handling EVENT_ARG_QUERY", localException);
          localObject2 = null;
        }
        AsyncQueryHandler.this.doUpdateOfCursor((Cursor)localObject2);
        c.a((Closeable)localObject2);
      }
      Object localObject2 = localWorkerArgs.handler.obtainMessage(i);
      ((Message)localObject2).obj = localWorkerArgs;
      ((Message)localObject2).arg1 = paramMessage.arg1;
      ((Message)localObject2).sendToTarget();
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.data.AsyncQueryHandler
 * JD-Core Version:    0.7.0.1
 */