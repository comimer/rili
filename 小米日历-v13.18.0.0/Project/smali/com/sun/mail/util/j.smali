.class public Lcom/sun/mail/util/j;
.super Lcom/sun/mail/util/l;
.source "QEncoderStream.java"


# static fields
.field private static g:Ljava/lang/String; = "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"

.field private static h:Ljava/lang/String; = "=_?"


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    .line 1
    const v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/l;-><init>(Ljava/io/OutputStream;I)V

    .line 5
    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/sun/mail/util/j;->g:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object p1, Lcom/sun/mail/util/j;->h:Ljava/lang/String;

    .line 13
    .line 14
    :goto_0
    iput-object p1, p0, Lcom/sun/mail/util/j;->f:Ljava/lang/String;

    .line 15
    .line 16
    return-void
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
.end method

.method public static d([BZ)I
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/sun/mail/util/j;->g:Ljava/lang/String;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object p1, Lcom/sun/mail/util/j;->h:Ljava/lang/String;

    .line 7
    .line 8
    :goto_0
    const/4 v0, 0x0

    .line 9
    move v1, v0

    .line 10
    :goto_1
    array-length v2, p0

    .line 11
    if-ge v0, v2, :cond_3

    .line 12
    .line 13
    aget-byte v2, p0, v0

    .line 14
    .line 15
    and-int/lit16 v2, v2, 0xff

    .line 16
    .line 17
    const/16 v3, 0x20

    .line 18
    .line 19
    if-lt v2, v3, :cond_2

    .line 20
    .line 21
    const/16 v3, 0x7f

    .line 22
    .line 23
    if-ge v2, v3, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-ltz v2, :cond_1

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x3

    .line 36
    .line 37
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    return v1
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    and-int/lit16 p1, p1, 0xff

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x20

    .line 5
    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x5f

    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/util/l;->c(IZ)V

    .line 11
    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    if-lt p1, v1, :cond_2

    .line 15
    .line 16
    const/16 v1, 0x7f

    .line 17
    .line 18
    if-ge p1, v1, :cond_2

    .line 19
    .line 20
    iget-object v1, p0, Lcom/sun/mail/util/j;->f:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-ltz v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/util/l;->c(IZ)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/util/l;->c(IZ)V

    .line 35
    .line 36
    .line 37
    :goto_1
    return-void
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
