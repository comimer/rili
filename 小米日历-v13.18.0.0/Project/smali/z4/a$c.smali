.class Lz4/a$c;
.super Ljava/lang/Object;
.source "AutoLoginDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz4/a;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lz4/a;


# direct methods
.method constructor <init>(Lz4/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz4/a$c;->a:Lz4/a;

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
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz4/a$c;->a:Lz4/a;

    .line 2
    .line 3
    invoke-static {v0}, Lz4/a;->e(Lz4/a;)Landroid/webkit/WebView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lz4/a$c;->a:Lz4/a;

    .line 10
    .line 11
    invoke-static {v0}, Lz4/a;->f(Lz4/a;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lz4/a$c;->a:Lz4/a;

    .line 22
    .line 23
    invoke-static {v0}, Lz4/a;->e(Lz4/a;)Landroid/webkit/WebView;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lz4/a$c;->a:Lz4/a;

    .line 28
    .line 29
    invoke-static {v1}, Lz4/a;->f(Lz4/a;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/miui/calendar/web/d;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lz4/a$c;->a:Lz4/a;

    .line 37
    .line 38
    invoke-static {v0}, Lz4/a;->a(Lz4/a;)Landroid/webkit/WebView;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lz4/a$c;->a:Lz4/a;

    .line 45
    .line 46
    invoke-static {v0}, Lz4/a;->a(Lz4/a;)Landroid/webkit/WebView;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lz4/a$c;->a:Lz4/a;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    invoke-static {v0, v1}, Lz4/a;->b(Lz4/a;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 57
    .line 58
    .line 59
    :cond_1
    return-void
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
