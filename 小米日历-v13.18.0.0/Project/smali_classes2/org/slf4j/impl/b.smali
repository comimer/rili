.class public Lorg/slf4j/impl/b;
.super Ljava/lang/Object;
.source "StaticLoggerBinder.java"


# static fields
.field private static final b:Lorg/slf4j/impl/b;

.field public static c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private final a:Lrc/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/slf4j/impl/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/slf4j/impl/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/slf4j/impl/b;->b:Lorg/slf4j/impl/b;

    .line 7
    .line 8
    const-string v0, "1.6.99"

    .line 9
    .line 10
    sput-object v0, Lorg/slf4j/impl/b;->c:Ljava/lang/String;

    .line 11
    .line 12
    const-class v0, Lorg/slf4j/impl/a;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lorg/slf4j/impl/b;->d:Ljava/lang/String;

    .line 19
    .line 20
    return-void
    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/slf4j/impl/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/slf4j/impl/a;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/slf4j/impl/b;->a:Lrc/a;

    .line 10
    .line 11
    return-void
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
.end method

.method public static final c()Lorg/slf4j/impl/b;
    .locals 1

    .line 1
    sget-object v0, Lorg/slf4j/impl/b;->b:Lorg/slf4j/impl/b;

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method


# virtual methods
.method public a()Lrc/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/impl/b;->a:Lrc/a;

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/slf4j/impl/b;->d:Ljava/lang/String;

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method
