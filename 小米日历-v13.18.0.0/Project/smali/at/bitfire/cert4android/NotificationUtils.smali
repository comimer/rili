.class public final Lat/bitfire/cert4android/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0086T\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lat/bitfire/cert4android/NotificationUtils;",
        "",
        "Landroid/content/Context;",
        "context",
        "Landroidx/core/app/v;",
        "createChannels",
        "",
        "CHANNEL_CERTIFICATES",
        "Ljava/lang/String;",
        "<init>",
        "()V",
        "cert4android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final CHANNEL_CERTIFICATES:Ljava/lang/String; = "cert4android"

.field public static final INSTANCE:Lat/bitfire/cert4android/NotificationUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lat/bitfire/cert4android/NotificationUtils;

    invoke-direct {v0}, Lat/bitfire/cert4android/NotificationUtils;-><init>()V

    sput-object v0, Lat/bitfire/cert4android/NotificationUtils;->INSTANCE:Lat/bitfire/cert4android/NotificationUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createChannels(Landroid/content/Context;)Landroidx/core/app/v;
    .locals 5

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "notification"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Landroid/app/NotificationManager;

    .line 18
    .line 19
    new-instance v1, Landroid/app/NotificationChannel;

    .line 20
    .line 21
    sget v2, Lat/bitfire/cert4android/R$string;->certificate_notification_connection_security:I

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x3

    .line 28
    const-string v4, "cert4android"

    .line 29
    .line 30
    invoke-direct {v1, v4, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1}, Landroidx/core/app/v;->c(Landroid/content/Context;)Landroidx/core/app/v;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "from(context)"

    .line 41
    .line 42
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object p1
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
.end method
