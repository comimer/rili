.class public Lmiuix/core/util/c;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "[C>;>;"
        }
    .end annotation
.end field

.field private static final c:Lmiuix/core/util/e$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/e$e<",
            "Ljava/io/ByteArrayOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lmiuix/core/util/e$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/e$e<",
            "Ljava/io/CharArrayWriter;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lmiuix/core/util/e$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/core/util/e$e<",
            "Ljava/io/StringWriter;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lmiuix/core/util/c;->a:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lmiuix/core/util/c;->b:Ljava/lang/ThreadLocal;

    .line 14
    .line 15
    new-instance v0, Lmiuix/core/util/c$a;

    .line 16
    .line 17
    invoke-direct {v0}, Lmiuix/core/util/c$a;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-static {v0, v1}, Lmiuix/core/util/e;->b(Lmiuix/core/util/e$d;I)Lmiuix/core/util/e$g;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lmiuix/core/util/c;->c:Lmiuix/core/util/e$e;

    .line 26
    .line 27
    new-instance v0, Lmiuix/core/util/c$b;

    .line 28
    .line 29
    invoke-direct {v0}, Lmiuix/core/util/c$b;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {v0, v1}, Lmiuix/core/util/e;->b(Lmiuix/core/util/e$d;I)Lmiuix/core/util/e$g;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lmiuix/core/util/c;->d:Lmiuix/core/util/e$e;

    .line 37
    .line 38
    new-instance v0, Lmiuix/core/util/c$c;

    .line 39
    .line 40
    invoke-direct {v0}, Lmiuix/core/util/c$c;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1}, Lmiuix/core/util/e;->b(Lmiuix/core/util/e$d;I)Lmiuix/core/util/e$g;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lmiuix/core/util/c;->e:Lmiuix/core/util/e$e;

    .line 48
    .line 49
    invoke-interface {v0}, Lmiuix/core/util/e$e;->b()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Ljava/io/StringWriter;

    .line 54
    .line 55
    new-instance v2, Ljava/io/PrintWriter;

    .line 56
    .line 57
    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    sput-object v3, Lmiuix/core/util/c;->f:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v1}, Lmiuix/core/util/e$e;->a(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
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
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
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
.end method

.method public static b(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
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
.end method
