.class public abstract Lnet/fortuna/ical4j/data/AbstractOutputter;
.super Ljava/lang/Object;
.source "AbstractOutputter.java"


# static fields
.field protected static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;


# instance fields
.field protected foldLength:I

.field private validating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lnet/fortuna/ical4j/data/AbstractOutputter;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    return-void
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

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/data/AbstractOutputter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const-string v0, "ical4j.compatibility.outlook"

    .line 2
    invoke-static {v0}, Lnet/fortuna/ical4j/util/CompatibilityHints;->isHintEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4b

    goto :goto_0

    :cond_0
    const/16 v0, 0x49

    :goto_0
    invoke-direct {p0, p1, v0}, Lnet/fortuna/ical4j/data/AbstractOutputter;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lnet/fortuna/ical4j/data/AbstractOutputter;->validating:Z

    .line 5
    iput p2, p0, Lnet/fortuna/ical4j/data/AbstractOutputter;->foldLength:I

    return-void
.end method


# virtual methods
.method public final isValidating()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/fortuna/ical4j/data/AbstractOutputter;->validating:Z

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
    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
.end method

.method public final setValidating(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/fortuna/ical4j/data/AbstractOutputter;->validating:Z

    .line 2
    .line 3
    return-void
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
    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    .line 33
.end method
