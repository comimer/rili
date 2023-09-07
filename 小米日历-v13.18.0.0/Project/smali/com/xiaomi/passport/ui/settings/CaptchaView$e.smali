.class Lcom/xiaomi/passport/ui/settings/CaptchaView$e;
.super Ljava/lang/Object;
.source "CaptchaView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/passport/ui/settings/CaptchaView;->m(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/passport/ui/settings/CaptchaView;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/settings/CaptchaView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/passport/ui/settings/CaptchaView$e;->a:Lcom/xiaomi/passport/ui/settings/CaptchaView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
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


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/xiaomi/passport/ui/settings/CaptchaView$e;->a:Lcom/xiaomi/passport/ui/settings/CaptchaView;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/xiaomi/passport/ui/settings/CaptchaView;->b(Lcom/xiaomi/passport/ui/settings/CaptchaView;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/xiaomi/passport/ui/settings/CaptchaView$e;->a:Lcom/xiaomi/passport/ui/settings/CaptchaView;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/xiaomi/passport/ui/settings/CaptchaView;->h(Lcom/xiaomi/passport/ui/settings/CaptchaView;)Landroid/widget/ImageView;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget v0, Ln5/d;->j:I

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
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
.end method
