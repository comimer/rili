.class public final Ls4/f;
.super Ljava/lang/Object;
.source "Settings.java"


# instance fields
.field private a:I

.field private b:Z

.field private c:I

.field private d:Ls4/b;

.field private e:Lcom/miui/calendar/util/logger/LogLevel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Ls4/f;->a:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Ls4/f;->b:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Ls4/f;->c:I

    .line 12
    .line 13
    sget-object v0, Lcom/miui/calendar/util/logger/LogLevel;->FULL:Lcom/miui/calendar/util/logger/LogLevel;

    .line 14
    .line 15
    iput-object v0, p0, Ls4/f;->e:Lcom/miui/calendar/util/logger/LogLevel;

    .line 16
    .line 17
    return-void
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method


# virtual methods
.method public a()Lcom/miui/calendar/util/logger/LogLevel;
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/f;->e:Lcom/miui/calendar/util/logger/LogLevel;

    .line 2
    .line 3
    return-object v0
    .line 4
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

.method public b()Ls4/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ls4/f;->d:Ls4/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ls4/a;

    .line 6
    .line 7
    invoke-direct {v0}, Ls4/a;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ls4/f;->d:Ls4/b;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Ls4/f;->d:Ls4/b;

    .line 13
    .line 14
    return-object v0
    .line 15
    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Ls4/f;->a:I

    .line 2
    .line 3
    return v0
    .line 4
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

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Ls4/f;->c:I

    .line 2
    .line 3
    return v0
    .line 4
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

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls4/f;->b:Z

    .line 2
    .line 3
    return v0
    .line 4
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
