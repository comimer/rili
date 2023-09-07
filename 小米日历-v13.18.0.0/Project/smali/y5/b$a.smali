.class Ly5/b$a;
.super Ljava/lang/Object;
.source "ServerServiceConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly5/b;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ly5/b;


# direct methods
.method constructor <init>(Ly5/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly5/b$a;->a:Ly5/b;

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
    :try_start_0
    iget-object v0, p0, Ly5/b$a;->a:Ly5/b;

    .line 2
    .line 3
    invoke-static {v0}, Ly5/b;->a(Ly5/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ly5/b$a;->a:Ly5/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Ly5/b;->i()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    iget-object v1, p0, Ly5/b$a;->a:Ly5/b;

    .line 14
    .line 15
    invoke-virtual {v1}, Ly5/b;->i()V

    .line 16
    .line 17
    .line 18
    throw v0
    .line 19
    .line 20
    .line 21
    .line 22
.end method
