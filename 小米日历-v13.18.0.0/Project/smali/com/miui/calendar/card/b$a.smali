.class Lcom/miui/calendar/card/b$a;
.super Landroid/os/AsyncTask;
.source "CardFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/calendar/card/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/miui/calendar/card/b$b;

.field private b:Landroid/os/Handler;

.field final synthetic c:Lcom/miui/calendar/card/b;


# direct methods
.method public constructor <init>(Lcom/miui/calendar/card/b;Lcom/miui/calendar/card/b$b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/miui/calendar/card/b$a;->c:Lcom/miui/calendar/card/b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/miui/calendar/card/b$a;->b:Landroid/os/Handler;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/miui/calendar/card/b$a;->a:Lcom/miui/calendar/card/b$b;

    .line 18
    .line 19
    return-void
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

.method public static synthetic a(Lcom/miui/calendar/card/b$a;Lcom/miui/calendar/card/Card;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/calendar/card/b$a;->c(Lcom/miui/calendar/card/Card;)V

    return-void
.end method

.method private synthetic c(Lcom/miui/calendar/card/Card;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/calendar/card/b$a;->g(Lcom/miui/calendar/card/Card;)V

    .line 2
    .line 3
    .line 4
    return-void
    .line 5
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

.method private g(Lcom/miui/calendar/card/Card;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/miui/calendar/card/Card;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/miui/calendar/card/b$a;->a:Lcom/miui/calendar/card/b$b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/miui/calendar/card/b$b;->a()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/card/b$a;->a:Lcom/miui/calendar/card/b$b;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/miui/calendar/card/Card;->e(Lcom/miui/calendar/card/b$b;)V

    .line 14
    .line 15
    .line 16
    return-void
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method protected varargs b([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    move v0, p1

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/miui/calendar/card/b$a;->c:Lcom/miui/calendar/card/b;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/miui/calendar/card/b;->d:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge v0, v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/miui/calendar/card/b$a;->c:Lcom/miui/calendar/card/b;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/miui/calendar/card/b;->d:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/miui/calendar/card/Card;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/miui/calendar/card/Card;->b()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    const-string p1, "Cal:D:CardFactory"

    .line 33
    .line 34
    const-string v0, "LoadLocalDataAsyncTask doInBackground() task cancelled, break"

    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    const/4 v1, 0x1

    .line 41
    new-array v1, v1, [Ljava/lang/Integer;

    .line 42
    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    aput-object v2, v1, p1

    .line 48
    .line 49
    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 56
    return-object p1
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

.method protected d(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/calendar/card/b$a;->c:Lcom/miui/calendar/card/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Lcom/miui/calendar/card/b;->f:Lcom/miui/calendar/util/r0;

    .line 5
    .line 6
    const-string v0, "Cal:D:CardFactory"

    .line 7
    .line 8
    const-string v2, "LoadLocalDataAsyncTask onCancelled() mExecutingTaskDay set null"

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/miui/calendar/card/b$a;->c:Lcom/miui/calendar/card/b;

    .line 14
    .line 15
    iput-object v1, v0, Lcom/miui/calendar/card/b;->e:Lcom/miui/calendar/card/b$a;

    .line 16
    .line 17
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
    .line 21
    .line 22
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/miui/calendar/card/b$a;->b([Ljava/lang/Void;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
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

.method protected e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/miui/calendar/card/b$a;->c:Lcom/miui/calendar/card/b;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/miui/calendar/card/b;->f:Lcom/miui/calendar/util/r0;

    .line 5
    .line 6
    const-string p1, "Cal:D:CardFactory"

    .line 7
    .line 8
    const-string v1, "LoadLocalDataAsyncTask() load card completed, mExecutingTaskDay set null"

    .line 9
    .line 10
    invoke-static {p1, v1}, Lcom/miui/calendar/util/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/miui/calendar/card/b$a;->c:Lcom/miui/calendar/card/b;

    .line 14
    .line 15
    iput-object v0, p1, Lcom/miui/calendar/card/b;->e:Lcom/miui/calendar/card/b$a;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/miui/calendar/card/b$a;->a:Lcom/miui/calendar/card/b$b;

    .line 18
    .line 19
    invoke-static {p1, v0}, Lcom/miui/calendar/card/b;->a(Lcom/miui/calendar/card/b;Lcom/miui/calendar/card/b$b;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected varargs f([Ljava/lang/Integer;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget-object v0, p0, Lcom/miui/calendar/card/b$a;->c:Lcom/miui/calendar/card/b;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/miui/calendar/card/b;->d:Ljava/util/List;

    .line 11
    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/miui/calendar/card/b$a;->c:Lcom/miui/calendar/card/b;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/miui/calendar/card/b;->d:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lt p1, v0, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/miui/calendar/card/b$a;->c:Lcom/miui/calendar/card/b;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/miui/calendar/card/b;->d:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/miui/calendar/card/Card;

    .line 40
    .line 41
    iget v0, p1, Lcom/miui/calendar/card/Card;->c:I

    .line 42
    .line 43
    const/16 v1, 0x51

    .line 44
    .line 45
    if-ne v0, v1, :cond_1

    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/miui/calendar/card/b$a;->g(Lcom/miui/calendar/card/Card;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/miui/calendar/card/b$a;->b:Landroid/os/Handler;

    .line 52
    .line 53
    new-instance v1, Lcom/miui/calendar/card/a;

    .line 54
    .line 55
    invoke-direct {v1, p0, p1}, Lcom/miui/calendar/card/a;-><init>(Lcom/miui/calendar/card/b$a;Lcom/miui/calendar/card/Card;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    return-void
    .line 62
    .line 63
    .line 64
    .line 65
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/miui/calendar/card/b$a;->d(Ljava/lang/String;)V

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

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/miui/calendar/card/b$a;->e(Ljava/lang/String;)V

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

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/miui/calendar/card/b$a;->f([Ljava/lang/Integer;)V

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
