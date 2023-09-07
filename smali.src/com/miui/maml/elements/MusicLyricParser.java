package com.miui.maml.elements;

import android.text.Html;
import android.text.TextUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class MusicLyricParser
{
  public static final String CRLF = "\r\n";
  private static final int INTERVAL_OF_LAST = 8000;
  private static final int LINE_PARSE_IGNORE = 1;
  private static final int LINE_PARSE_REGULAR = 2;
  private static final int LINE_PARSE_STOP = 0;
  public static final int MAX_VALID_TIME = 18000000;
  private static final String TAG_ALBUM = "al";
  private static final String TAG_ARTIST = "ar";
  private static final String TAG_EDITOR = "by";
  private static final Pattern TAG_EXTRA_LRC = Pattern.compile("<[0-9]{0,2}:[0-9]{0,2}:[0-9]{0,2}>");
  private static final String TAG_OFFSET = "offset";
  private static final String TAG_TITLE = "ti";
  private static final String TAG_VERSION = "ve";
  
  private static void correctTime(Lyric paramLyric)
  {
    if (paramLyric == null) {
      return;
    }
    paramLyric = paramLyric.mEntityList;
    int i = paramLyric.size();
    if ((i > 1) && (((LyricEntity)paramLyric.get(0)).time == ((LyricEntity)paramLyric.get(1)).time)) {
      ((LyricEntity)paramLyric.get(0)).time = (((LyricEntity)paramLyric.get(1)).time / 2);
    }
    int m;
    for (int j = 1; j < i - 1; j = m)
    {
      int k = ((LyricEntity)paramLyric.get(j)).time;
      m = j + 1;
      if (k == ((LyricEntity)paramLyric.get(m)).time) {
        ((LyricEntity)paramLyric.get(j)).time = ((((LyricEntity)paramLyric.get(j - 1)).time + ((LyricEntity)paramLyric.get(m)).time) / 2);
      }
    }
  }
  
  private static Lyric doParse(String paramString)
    throws IOException
  {
    LyricHeader localLyricHeader = new LyricHeader();
    ArrayList localArrayList = new ArrayList();
    paramString = paramString.split("\r\n");
    boolean bool = false;
    int i = 0;
    if (paramString != null)
    {
      int j = paramString.length;
      bool = false;
      while (i < j)
      {
        int k = parseLine(paramString[i], localLyricHeader, localArrayList);
        if (k == 0) {
          break;
        }
        if (k == 1) {
          bool = true;
        }
        i++;
      }
    }
    if (!localArrayList.isEmpty())
    {
      Collections.sort(localArrayList, new EntityCompator());
      paramString = new Lyric(localLyricHeader, localArrayList, bool);
    }
    else
    {
      paramString = null;
    }
    return paramString;
  }
  
  private static int parseEntity(String[] paramArrayOfString, ArrayList<LyricEntity> paramArrayList, String paramString)
  {
    i = 1;
    try
    {
      int j = (int)(Double.parseDouble(paramArrayOfString[(paramArrayOfString.length - 1)]) * 1000.0D);
      int k = 0;
      int m = paramArrayOfString.length - 2;
      n = 60;
      for (;;)
      {
        int i1 = n;
        if (m < 0) {
          break;
        }
        int i2 = Integer.parseInt(paramArrayOfString[m]);
        n = i1 * 60;
        k += i2 * i1;
        m--;
      }
      n = j + k * 1000;
      if (n < 18000000)
      {
        paramArrayOfString = new com/miui/maml/elements/MusicLyricParser$LyricEntity;
        paramArrayOfString.<init>(n, paramString);
        paramArrayList.add(paramArrayOfString);
      }
      n = 2;
    }
    catch (NumberFormatException paramArrayOfString)
    {
      for (;;)
      {
        int n = i;
      }
    }
    return n;
  }
  
  private static int parseHeader(String paramString, LyricHeader paramLyricHeader)
  {
    int i = paramString.indexOf(":");
    j = 1;
    k = j;
    if (i >= 0) {
      if (i >= paramString.length() - 1)
      {
        k = j;
      }
      else
      {
        String str = paramString.substring(0, i);
        paramString = paramString.substring(i + 1);
        if (str.equals("al"))
        {
          paramLyricHeader.album = paramString;
        }
        else if (str.equals("ar"))
        {
          paramLyricHeader.artist = paramString;
        }
        else if (str.equals("ti"))
        {
          paramLyricHeader.title = paramString;
        }
        else if (str.equals("by"))
        {
          paramLyricHeader.editor = paramString;
        }
        else if (str.equals("ve"))
        {
          paramLyricHeader.version = paramString;
        }
        else
        {
          k = j;
          if (!str.equals("offset")) {
            break label162;
          }
        }
      }
    }
    try
    {
      paramLyricHeader.offset = Integer.parseInt(paramString);
      k = 2;
    }
    catch (NumberFormatException paramString)
    {
      for (;;)
      {
        label162:
        k = j;
      }
    }
    return k;
  }
  
  private static int parseLine(String paramString, LyricHeader paramLyricHeader, ArrayList<LyricEntity> paramArrayList)
  {
    paramString = paramString.trim();
    if (TextUtils.isEmpty(paramString)) {
      return 1;
    }
    Object localObject = TAG_EXTRA_LRC.matcher(paramString).replaceAll("");
    int i = ((String)localObject).lastIndexOf("]");
    if (i == -1) {
      return 1;
    }
    paramString = ((String)localObject).substring(i + 1);
    int j = ((String)localObject).indexOf("[");
    if (j == -1) {
      return 1;
    }
    localObject = ((String)localObject).substring(j, i).split("]");
    int k = localObject.length;
    i = 0;
    j = 2;
    while (i < k)
    {
      String str = localObject[i];
      if (str.startsWith("["))
      {
        str = str.substring(1);
        String[] arrayOfString = str.split(":");
        if (arrayOfString.length >= 2) {
          if (TextUtils.isDigitsOnly(arrayOfString[0])) {
            j = parseEntity(arrayOfString, paramArrayList, paramString);
          } else {
            j = parseHeader(str, paramLyricHeader);
          }
        }
      }
      i++;
    }
    return j;
  }
  
  public static Lyric parseLyric(String paramString)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    if (paramString != null)
    {
      localObject1 = localObject2;
      try
      {
        paramString = doParse(paramString);
        localObject1 = paramString;
        correctTime(paramString);
        localObject1 = paramString;
      }
      catch (Exception paramString)
      {
        paramString.printStackTrace();
      }
    }
    return localObject1;
  }
  
  static class EntityCompator
    implements Comparator<MusicLyricParser.LyricEntity>
  {
    public int compare(MusicLyricParser.LyricEntity paramLyricEntity1, MusicLyricParser.LyricEntity paramLyricEntity2)
    {
      return paramLyricEntity1.time - paramLyricEntity2.time;
    }
  }
  
  public static class Lyric
  {
    private final MusicLyricParser.LyricEntity EMPTY_AFTER;
    private final MusicLyricParser.LyricEntity EMPTY_BEFORE;
    private final ArrayList<MusicLyricParser.LyricEntity> mEntityList;
    private final MusicLyricParser.LyricHeader mHeader;
    private boolean mIsModified;
    private LyricLocator mLyricLocator = new LyricLocator();
    private final long mOpenTime = System.currentTimeMillis();
    private int mOriginHeaderOffset;
    
    public Lyric(MusicLyricParser.LyricHeader paramLyricHeader, ArrayList<MusicLyricParser.LyricEntity> paramArrayList, boolean paramBoolean)
    {
      this.mHeader = paramLyricHeader;
      this.mOriginHeaderOffset = paramLyricHeader.offset;
      this.mEntityList = paramArrayList;
      this.mIsModified = paramBoolean;
      this.EMPTY_BEFORE = new MusicLyricParser.LyricEntity(-1, "\n");
      this.EMPTY_AFTER = new MusicLyricParser.LyricEntity(paramArrayList.size(), "\n");
    }
    
    private long getTimeFromLyricShot(int paramInt, double paramDouble)
    {
      int i = size() - 1;
      long l;
      if (paramInt >= i) {
        l = ((MusicLyricParser.LyricEntity)this.mEntityList.get(i)).time + (paramInt - i) * 8000 + (paramDouble * 8000.0D);
      } else {
        l = (((MusicLyricParser.LyricEntity)this.mEntityList.get(paramInt)).time + (((MusicLyricParser.LyricEntity)this.mEntityList.get(paramInt + 1)).time - ((MusicLyricParser.LyricEntity)this.mEntityList.get(paramInt)).time) * paramDouble);
      }
      return l;
    }
    
    public void addOffset(int paramInt)
    {
      MusicLyricParser.LyricHeader localLyricHeader = this.mHeader;
      localLyricHeader.offset += paramInt;
      this.mIsModified = true;
    }
    
    public void correctLyric(MusicLyricParser.LyricShot paramLyricShot, int paramInt, double paramDouble)
    {
      int i = size();
      if ((paramInt >= 0) && (paramInt <= i))
      {
        int j = paramLyricShot.lineIndex;
        if ((j >= 0) && (j <= i))
        {
          long l1 = getTimeFromLyricShot(j, paramLyricShot.percent);
          long l2 = getTimeFromLyricShot(paramInt, paramDouble);
          i = 1;
          int k = paramLyricShot.lineIndex;
          if (paramInt <= k)
          {
            j = i;
            if (paramInt == k)
            {
              j = i;
              if (paramDouble <= paramLyricShot.percent) {}
            }
          }
          else
          {
            j = 0;
          }
          if ((j == 0) && (l1 > l2)) {
            return;
          }
          if ((j != 0) && (l1 < l2)) {
            return;
          }
          addOffset((int)(l1 - l2));
        }
      }
    }
    
    public void decorate()
    {
      if (this.mEntityList.isEmpty()) {
        return;
      }
      ArrayList localArrayList = this.mEntityList;
      int i = localArrayList.size();
      if (i > 0)
      {
        int j = 0;
        if (!((MusicLyricParser.LyricEntity)localArrayList.get(0)).isDecorated()) {
          while (j < i)
          {
            ((MusicLyricParser.LyricEntity)localArrayList.get(j)).decorate();
            j++;
          }
        }
      }
    }
    
    public String getAfterLines(long paramLong)
    {
      return this.mLyricLocator.getAfterLines(paramLong);
    }
    
    public String getBeforeLines(long paramLong)
    {
      return this.mLyricLocator.getBeforeLines(paramLong);
    }
    
    public String getLastLine(long paramLong)
    {
      return this.mLyricLocator.getLastLine(paramLong);
    }
    
    public String getLine(long paramLong)
    {
      return this.mLyricLocator.getLine(paramLong);
    }
    
    public MusicLyricParser.LyricEntity getLyricContent(int paramInt)
    {
      MusicLyricParser.LyricEntity localLyricEntity;
      if (paramInt < 0) {
        localLyricEntity = this.EMPTY_BEFORE;
      } else if (paramInt >= this.mEntityList.size()) {
        localLyricEntity = this.EMPTY_AFTER;
      } else {
        localLyricEntity = (MusicLyricParser.LyricEntity)this.mEntityList.get(paramInt);
      }
      return localLyricEntity;
    }
    
    public MusicLyricParser.LyricShot getLyricShot(long paramLong)
    {
      int i = this.mHeader.offset;
      long l = ((MusicLyricParser.LyricEntity)this.mEntityList.get(0)).time + i;
      double d = 0.0D;
      if (l > paramLong) {
        return new MusicLyricParser.LyricShot(0, 0.0D);
      }
      for (int j = 1; j < this.mEntityList.size(); j++)
      {
        int k = ((MusicLyricParser.LyricEntity)this.mEntityList.get(j)).time + i;
        if (k > paramLong)
        {
          ArrayList localArrayList = this.mEntityList;
          j--;
          i = ((MusicLyricParser.LyricEntity)localArrayList.get(j)).time + i;
          if (k > i) {
            d = (paramLong - i) / (k - i);
          }
          return new MusicLyricParser.LyricShot(j, d);
        }
      }
      paramLong -= ((MusicLyricParser.LyricEntity)this.mEntityList.get(size() - 1)).time + i;
      if (paramLong < 8000L)
      {
        d = paramLong / 8000.0D;
        return new MusicLyricParser.LyricShot(size() - 1, d);
      }
      return new MusicLyricParser.LyricShot(this.mEntityList.size(), 0.0D);
    }
    
    public String getNextLine(long paramLong)
    {
      return this.mLyricLocator.getNextLine(paramLong);
    }
    
    public long getOpenTime()
    {
      return this.mOpenTime;
    }
    
    public ArrayList<CharSequence> getStringArr()
    {
      if (this.mEntityList.isEmpty()) {
        return null;
      }
      ArrayList localArrayList = new ArrayList(this.mEntityList.size());
      Iterator localIterator = this.mEntityList.iterator();
      while (localIterator.hasNext()) {
        localArrayList.add(((MusicLyricParser.LyricEntity)localIterator.next()).lyric);
      }
      return localArrayList;
    }
    
    public int[] getTimeArr()
    {
      if (this.mEntityList.isEmpty()) {
        return null;
      }
      int[] arrayOfInt = new int[this.mEntityList.size()];
      int i = 0;
      Iterator localIterator = this.mEntityList.iterator();
      while (localIterator.hasNext())
      {
        arrayOfInt[i] = (((MusicLyricParser.LyricEntity)localIterator.next()).time + this.mHeader.offset);
        i++;
      }
      return arrayOfInt;
    }
    
    public boolean isModified()
    {
      return this.mIsModified;
    }
    
    public void recycleContent()
    {
      this.mEntityList.clear();
    }
    
    public void resetHeaderOffset()
    {
      this.mHeader.offset = this.mOriginHeaderOffset;
    }
    
    public void set(int[] paramArrayOfInt, ArrayList<CharSequence> paramArrayList)
    {
      this.mLyricLocator.set(paramArrayOfInt, paramArrayList);
    }
    
    public int size()
    {
      return this.mEntityList.size();
    }
    
    class LyricLine
    {
      CharSequence lyric;
      int pos;
      
      LyricLine() {}
    }
    
    class LyricLocator
    {
      final int CRLF_LENGTH = 2;
      String mFullLyric;
      ArrayList<MusicLyricParser.Lyric.LyricLine> mLyricLines;
      int[] mTimeArr;
      
      LyricLocator() {}
      
      private int getLineNumber(long paramLong)
      {
        for (int i = 0;; i++)
        {
          int[] arrayOfInt = this.mTimeArr;
          if (i >= arrayOfInt.length) {
            break;
          }
          if (paramLong >= arrayOfInt[i])
          {
            long l;
            if (i < arrayOfInt.length - 1) {
              l = arrayOfInt[(i + 1)];
            } else {
              l = 9223372036854775807L;
            }
            if (paramLong < l) {
              return i;
            }
          }
        }
        return -1;
      }
      
      private void inflateLyricLines(ArrayList<CharSequence> paramArrayList)
      {
        Object localObject = this.mTimeArr;
        if ((localObject != null) && (paramArrayList != null) && (localObject.length == paramArrayList.size()))
        {
          this.mLyricLines = new ArrayList();
          int i = 0;
          for (int j = 0; j < this.mTimeArr.length; j++)
          {
            localObject = (CharSequence)paramArrayList.get(j);
            MusicLyricParser.Lyric.LyricLine localLyricLine = new MusicLyricParser.Lyric.LyricLine(MusicLyricParser.Lyric.this);
            localLyricLine.lyric = ((CharSequence)localObject);
            if (j > 0) {
              localObject = (MusicLyricParser.Lyric.LyricLine)this.mLyricLines.get(j - 1);
            } else {
              localObject = null;
            }
            int k;
            if (localObject != null) {
              k = ((MusicLyricParser.Lyric.LyricLine)localObject).pos + ((MusicLyricParser.Lyric.LyricLine)localObject).lyric.length() + this.CRLF_LENGTH;
            } else {
              k = 0;
            }
            localLyricLine.pos = k;
            this.mLyricLines.add(localLyricLine);
          }
          this.mFullLyric = "";
          for (j = i; j < this.mLyricLines.size(); j++)
          {
            paramArrayList = new StringBuilder();
            paramArrayList.append(this.mFullLyric);
            paramArrayList.append(((MusicLyricParser.Lyric.LyricLine)this.mLyricLines.get(j)).lyric);
            paramArrayList.append("\r\n");
            this.mFullLyric = paramArrayList.toString();
          }
          return;
        }
        this.mTimeArr = null;
        this.mLyricLines = null;
      }
      
      String getAfterLines(long paramLong)
      {
        if (this.mTimeArr == null) {
          return null;
        }
        int i = getLineNumber(paramLong);
        if (i < 0) {
          return this.mFullLyric;
        }
        if (i < this.mTimeArr.length - 1)
        {
          MusicLyricParser.Lyric.LyricLine localLyricLine = (MusicLyricParser.Lyric.LyricLine)this.mLyricLines.get(i);
          return this.mFullLyric.substring(localLyricLine.pos + localLyricLine.lyric.length() + this.CRLF_LENGTH, this.mFullLyric.length());
        }
        return null;
      }
      
      String getBeforeLines(long paramLong)
      {
        if (this.mTimeArr == null) {
          return null;
        }
        int i = getLineNumber(paramLong);
        if (i > 0)
        {
          MusicLyricParser.Lyric.LyricLine localLyricLine = (MusicLyricParser.Lyric.LyricLine)this.mLyricLines.get(i);
          return this.mFullLyric.substring(0, localLyricLine.pos - this.CRLF_LENGTH);
        }
        return null;
      }
      
      String getLastLine(long paramLong)
      {
        if (this.mTimeArr == null) {
          return null;
        }
        int i = getLineNumber(paramLong);
        if (i > 0)
        {
          MusicLyricParser.Lyric.LyricLine localLyricLine = (MusicLyricParser.Lyric.LyricLine)this.mLyricLines.get(i - 1);
          String str = this.mFullLyric;
          i = localLyricLine.pos;
          return str.substring(i, localLyricLine.lyric.length() + i);
        }
        return null;
      }
      
      String getLine(long paramLong)
      {
        if (this.mTimeArr == null) {
          return null;
        }
        int i = getLineNumber(paramLong);
        if (i != -1)
        {
          MusicLyricParser.Lyric.LyricLine localLyricLine = (MusicLyricParser.Lyric.LyricLine)this.mLyricLines.get(i);
          String str = this.mFullLyric;
          i = localLyricLine.pos;
          return str.substring(i, localLyricLine.lyric.length() + i);
        }
        return null;
      }
      
      String getNextLine(long paramLong)
      {
        if (this.mTimeArr == null) {
          return null;
        }
        int i = getLineNumber(paramLong);
        if ((i >= -1) && (i < this.mTimeArr.length - 1))
        {
          MusicLyricParser.Lyric.LyricLine localLyricLine = (MusicLyricParser.Lyric.LyricLine)this.mLyricLines.get(i + 1);
          String str = this.mFullLyric;
          i = localLyricLine.pos;
          return str.substring(i, localLyricLine.lyric.length() + i);
        }
        return null;
      }
      
      void set(int[] paramArrayOfInt, ArrayList<CharSequence> paramArrayList)
      {
        this.mTimeArr = paramArrayOfInt;
        inflateLyricLines(paramArrayList);
      }
    }
  }
  
  public static class LyricEntity
  {
    private static final String HTML_BR_PATTERN = "%s<br/>";
    public CharSequence lyric;
    public int time;
    
    public LyricEntity(int paramInt, String paramString)
    {
      this.time = paramInt;
      this.lyric = paramString;
    }
    
    public void decorate()
    {
      this.lyric = Html.fromHtml(String.format("%s<br/>", new Object[] { this.lyric }));
    }
    
    public boolean isDecorated()
    {
      return this.lyric instanceof String ^ true;
    }
  }
  
  public static class LyricHeader
  {
    public String album;
    public String artist;
    public String editor;
    public int offset;
    public String title;
    public String version;
  }
  
  public static class LyricShot
  {
    public int lineIndex;
    public double percent;
    
    public LyricShot(int paramInt, double paramDouble)
    {
      this.lineIndex = paramInt;
      this.percent = paramDouble;
    }
  }
}


/* Location:           J:\AndroidKiller_v1.3.1\AndroidKiller_v1.3.1\projects\小米日历-v13.18.0.0\ProjectSrc\smali\
 * Qualified Name:     com.miui.maml.elements.MusicLyricParser
 * JD-Core Version:    0.7.0.1
 */