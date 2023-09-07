.class Lcom/miui/calendar/ad/e$b;
.super Landroid/content/BroadcastReceiver;
.source "LocalPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/ad/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/calendar/ad/e;


# direct methods
.method private constructor <init>(Lcom/miui/calendar/ad/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/ad/e$b;->a:Lcom/miui/calendar/ad/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/calendar/ad/e;Lcom/miui/calendar/ad/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/calendar/ad/e$b;-><init>(Lcom/miui/calendar/ad/e;)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/calendar/ad/e$b;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/calendar/ad/e$b;->b(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic b(Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "packageName"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/miui/calendar/ad/e$b;->a:Lcom/miui/calendar/ad/e;

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/miui/calendar/ad/e;->b(Lcom/miui/calendar/ad/e;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/miui/calendar/ad/e$b;->a:Lcom/miui/calendar/ad/e;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lcom/miui/calendar/ad/e;->b(Lcom/miui/calendar/ad/e;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
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
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/Thread;

    .line 5
    .line 6
    new-instance v0, Lcom/miui/calendar/ad/f;

    .line 7
    .line 8
    invoke-direct {v0, p0, p2}, Lcom/miui/calendar/ad/f;-><init>(Lcom/miui/calendar/ad/e$b;Landroid/content/Intent;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 15
    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
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
.end method
