.class Lcom/xiaomi/passport/ui/settings/CaptchaView$g;
.super Ljava/lang/Object;
.source "CaptchaView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/settings/CaptchaView;->m(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/media/MediaPlayer;

.field final synthetic c:Lcom/xiaomi/passport/ui/settings/CaptchaView;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/settings/CaptchaView;Ljava/lang/String;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/settings/CaptchaView$g;->c:Lcom/xiaomi/passport/ui/settings/CaptchaView;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xiaomi/passport/ui/settings/CaptchaView$g;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/xiaomi/passport/ui/settings/CaptchaView$g;->b:Landroid/media/MediaPlayer;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
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
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xiaomi/passport/ui/settings/CaptchaView$g;->c:Lcom/xiaomi/passport/ui/settings/CaptchaView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/xiaomi/passport/ui/settings/CaptchaView$g;->c:Lcom/xiaomi/passport/ui/settings/CaptchaView;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/xiaomi/passport/ui/settings/CaptchaView$g;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1, v0, v2}, Lcom/xiaomi/passport/ui/settings/CaptchaView;->i(Lcom/xiaomi/passport/ui/settings/CaptchaView;Landroid/content/Context;Ljava/lang/String;)Landroid/util/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    const-string v0, "CaptchaView"

    .line 22
    .line 23
    const-string v1, "speaker captcha null"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/xiaomi/passport/ui/settings/CaptchaView$g;->b:Landroid/media/MediaPlayer;

    .line 32
    .line 33
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v3, Ljava/io/File;

    .line 36
    .line 37
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v2, v0, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/xiaomi/passport/ui/settings/CaptchaView$g;->b:Landroid/media/MediaPlayer;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/xiaomi/passport/ui/settings/CaptchaView$g;->c:Lcom/xiaomi/passport/ui/settings/CaptchaView;

    .line 50
    .line 51
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v0, v1}, Lcom/xiaomi/passport/ui/settings/CaptchaView;->g(Lcom/xiaomi/passport/ui/settings/CaptchaView;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 59
    .line 60
    return-object v0
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

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/settings/CaptchaView$g;->a()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method
