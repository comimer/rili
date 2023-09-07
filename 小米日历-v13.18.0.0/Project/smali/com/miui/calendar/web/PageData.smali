.class public Lcom/miui/calendar/web/PageData;
.super Ljava/lang/Object;
.source "PageData.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/calendar/web/PageData$ExtraData;,
        Lcom/miui/calendar/web/PageData$StyleData;,
        Lcom/miui/calendar/web/PageData$WeiboShareData;,
        Lcom/miui/calendar/web/PageData$WechatSharaData;,
        Lcom/miui/calendar/web/PageData$ShareData;
    }
.end annotation


# static fields
.field public static final PARAM_DATE:Ljava/lang/String; = "date"

.field public static final PARAM_EVENT_NAME:Ljava/lang/String; = "event_name"

.field public static final PARAM_FROM:Ljava/lang/String; = "from"

.field public static final PARAM_HOLIDAY:Ljava/lang/String; = "holiday"

.field public static final PARAM_HOLIDAY_ID:Ljava/lang/String; = "holidayId"

.field public static final PARAM_OAID:Ljava/lang/String; = "oaid"

.field public static final PARAM_RAND:Ljava/lang/String; = "rand"

.field public static final PARAM_RETURN_CALENDAR:Ljava/lang/String; = "return_calendar"

.field public static final PARAM_SHARE:Ljava/lang/String; = "share"

.field public static final PARAM_SHARE_IMAGE_URL:Ljava/lang/String; = "share_image_url"

.field public static final PARAM_SHOW_SHARE:Ljava/lang/String; = "showShare"

.field public static final PARAM_STYLE:Ljava/lang/String; = "style"

.field public static final PARAM_TITLE:Ljava/lang/String; = "title"

.field public static final PARAM_URL:Ljava/lang/String; = "url"


# instance fields
.field public share:Lcom/miui/calendar/web/PageData$ShareData;

.field public style:Lcom/miui/calendar/web/PageData$StyleData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PageData{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "share="

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/miui/calendar/web/PageData;->share:Lcom/miui/calendar/web/PageData$ShareData;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", style="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/miui/calendar/web/PageData;->style:Lcom/miui/calendar/web/PageData$StyleData;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x7d

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
.end method
