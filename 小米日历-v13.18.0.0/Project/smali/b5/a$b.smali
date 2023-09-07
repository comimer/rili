.class final Lb5/a$b;
.super Lk2/a$a;
.source "AutoStartManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb5/a;->b(ZLandroid/content/Context;Lb5/a$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb5/a$c;


# direct methods
.method constructor <init>(Lb5/a$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb5/a$b;->a:Lb5/a$c;

    .line 2
    .line 3
    invoke-direct {p0}, Lk2/a$a;-><init>()V

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
.method public n(Landroid/os/Message;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lb5/a$b;->a:Lb5/a$c;

    .line 2
    .line 3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lb5/a$c;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :goto_0
    return-void
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
