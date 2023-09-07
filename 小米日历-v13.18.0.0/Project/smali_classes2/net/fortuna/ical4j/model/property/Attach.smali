.class public Lnet/fortuna/ical4j/model/property/Attach;
.super Lnet/fortuna/ical4j/model/Property;
.source "Attach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/property/Attach$Factory;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3d9dde8dae7d5cdcL


# instance fields
.field private binary:[B

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lnet/fortuna/ical4j/model/property/Attach$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Attach$Factory;-><init>()V

    const-string v1, "ATTACH"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 2

    .line 10
    new-instance v0, Lnet/fortuna/ical4j/model/property/Attach$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Attach$Factory;-><init>()V

    const-string v1, "ATTACH"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 11
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attach;->uri:Ljava/net/URI;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 2
    new-instance v0, Lnet/fortuna/ical4j/model/property/Attach$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Attach$Factory;-><init>()V

    const-string v1, "ATTACH"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 3
    invoke-virtual {p0, p2}, Lnet/fortuna/ical4j/model/property/Attach;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;Ljava/net/URI;)V
    .locals 2

    .line 12
    new-instance v0, Lnet/fortuna/ical4j/model/property/Attach$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Attach$Factory;-><init>()V

    const-string v1, "ATTACH"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 13
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Attach;->uri:Ljava/net/URI;

    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/ParameterList;[B)V
    .locals 2

    .line 8
    new-instance v0, Lnet/fortuna/ical4j/model/property/Attach$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Attach$Factory;-><init>()V

    const-string v1, "ATTACH"

    invoke-direct {p0, v1, p1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 9
    iput-object p2, p0, Lnet/fortuna/ical4j/model/property/Attach;->binary:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    .line 4
    new-instance v0, Lnet/fortuna/ical4j/model/property/Attach$Factory;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/property/Attach$Factory;-><init>()V

    const-string v1, "ATTACH"

    invoke-direct {p0, v1, v0}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 5
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Encoding;->BASE64:Lnet/fortuna/ical4j/model/parameter/Encoding;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 6
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->BINARY:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->add(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 7
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attach;->binary:[B

    return-void
.end method


# virtual methods
.method public final getBinary()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Attach;->binary:[B

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

.method public final getUri()Ljava/net/URI;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Attach;->uri:Ljava/net/URI;

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

.method public final getValue()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getUri()Ljava/net/URI;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getUri()Ljava/net/URI;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lnet/fortuna/ical4j/util/Uris;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getBinary()[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    :try_start_0
    invoke-static {}, Lnet/fortuna/ical4j/util/EncoderFactory;->getInstance()Lnet/fortuna/ical4j/util/EncoderFactory;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "ENCODING"

    .line 31
    .line 32
    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lnet/fortuna/ical4j/model/parameter/Encoding;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/util/EncoderFactory;->createBinaryEncoder(Lnet/fortuna/ical4j/model/parameter/Encoding;)Lec/b;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Attach;->getBinary()[B

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v0, v2}, Lec/b;->b([B)[B

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/commons/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    .line 59
    :goto_0
    const-class v1, Lnet/fortuna/ical4j/model/property/Attach;

    .line 60
    .line 61
    invoke-static {v1}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "Error encoding binary data"

    .line 66
    .line 67
    invoke-interface {v1, v2, v0}, Lrc/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 71
    return-object v0
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
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

.method public final setBinary([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attach;->binary:[B

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attach;->uri:Ljava/net/URI;

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

.method public final setUri(Ljava/net/URI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attach;->uri:Ljava/net/URI;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attach;->binary:[B

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

.method public final setValue(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 1
    const-string v0, "ENCODING"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Lnet/fortuna/ical4j/util/DecoderFactory;->getInstance()Lnet/fortuna/ical4j/util/DecoderFactory;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lnet/fortuna/ical4j/model/parameter/Encoding;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/util/DecoderFactory;->createBinaryDecoder(Lnet/fortuna/ical4j/model/parameter/Encoding;)Lec/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {v0, p1}, Lec/a;->a([B)[B

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attach;->binary:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    const-class v0, Lnet/fortuna/ical4j/model/property/Attach;

    .line 36
    .line 37
    invoke-static {v0}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "Error decoding binary data"

    .line 42
    .line 43
    invoke-interface {v0, v1, p1}, Lrc/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_1
    move-exception p1

    .line 48
    const-class v0, Lnet/fortuna/ical4j/model/property/Attach;

    .line 49
    .line 50
    invoke-static {v0}, Lrc/c;->i(Ljava/lang/Class;)Lrc/b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "Error encoding binary data"

    .line 55
    .line 56
    invoke-interface {v0, v1, p1}, Lrc/b;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-static {p1}, Lnet/fortuna/ical4j/util/Uris;->create(Ljava/lang/String;)Ljava/net/URI;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lnet/fortuna/ical4j/model/property/Attach;->uri:Ljava/net/URI;

    .line 65
    .line 66
    :goto_0
    return-void
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
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
.end method

.method public final validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/validate/ValidationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "FMTTYPE"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->BINARY:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 11
    .line 12
    const-string v1, "VALUE"

    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Parameter;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "ENCODING"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lnet/fortuna/ical4j/validate/ParameterValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Encoding;->BASE64:Lnet/fortuna/ical4j/model/parameter/Encoding;

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/Parameter;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Lnet/fortuna/ical4j/validate/ValidationException;

    .line 47
    .line 48
    const-string v1, "If the value type parameter is [BINARY], the inlineencoding parameter MUST be specified with the value [BASE64]"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/validate/ValidationException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    return-void
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
    .line 76
    .line 77
    .line 78
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
