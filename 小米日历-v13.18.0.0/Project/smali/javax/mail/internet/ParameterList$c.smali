.class Ljavax/mail/internet/ParameterList$c;
.super Ljava/lang/Object;
.source "ParameterList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/mail/internet/ParameterList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ljavax/mail/internet/ParameterList$c;->b:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    iput p1, p0, Ljavax/mail/internet/ParameterList$c;->a:I

    .line 12
    .line 13
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


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ljavax/mail/internet/ParameterList$c;->b:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "; "

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    iget v0, p0, Ljavax/mail/internet/ParameterList$c;->a:I

    .line 9
    .line 10
    add-int/lit8 v0, v0, 0x2

    .line 11
    .line 12
    iput v0, p0, Ljavax/mail/internet/ParameterList$c;->a:I

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    iget v1, p0, Ljavax/mail/internet/ParameterList$c;->a:I

    .line 26
    .line 27
    add-int/2addr v1, v0

    .line 28
    const/16 v0, 0x4c

    .line 29
    .line 30
    if-le v1, v0, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Ljavax/mail/internet/ParameterList$c;->b:Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v2, "\r\n\t"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 v1, 0x8

    .line 40
    .line 41
    iput v1, p0, Ljavax/mail/internet/ParameterList$c;->a:I

    .line 42
    .line 43
    :cond_0
    iget-object v1, p0, Ljavax/mail/internet/ParameterList$c;->b:Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const/16 v2, 0x3d

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v1, p0, Ljavax/mail/internet/ParameterList$c;->a:I

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    add-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    add-int/2addr v1, p1

    .line 62
    iput v1, p0, Ljavax/mail/internet/ParameterList$c;->a:I

    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    add-int/2addr v1, p1

    .line 69
    if-le v1, v0, :cond_2

    .line 70
    .line 71
    iget p1, p0, Ljavax/mail/internet/ParameterList$c;->a:I

    .line 72
    .line 73
    invoke-static {p1, p2}, Ljavax/mail/internet/h;->j(ILjava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p2, p0, Ljavax/mail/internet/ParameterList$c;->b:Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const/16 p2, 0xa

    .line 83
    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-ltz p2, :cond_1

    .line 89
    .line 90
    iget v0, p0, Ljavax/mail/internet/ParameterList$c;->a:I

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    sub-int/2addr p1, p2

    .line 97
    add-int/lit8 p1, p1, -0x1

    .line 98
    .line 99
    add-int/2addr v0, p1

    .line 100
    iput v0, p0, Ljavax/mail/internet/ParameterList$c;->a:I

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    iget p2, p0, Ljavax/mail/internet/ParameterList$c;->a:I

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    add-int/2addr p2, p1

    .line 110
    iput p2, p0, Ljavax/mail/internet/ParameterList$c;->a:I

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_2
    iget-object p1, p0, Ljavax/mail/internet/ParameterList$c;->b:Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget p1, p0, Ljavax/mail/internet/ParameterList$c;->a:I

    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    add-int/2addr p1, p2

    .line 125
    iput p1, p0, Ljavax/mail/internet/ParameterList$c;->a:I

    .line 126
    .line 127
    :goto_0
    return-void
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ljavax/mail/internet/ParameterList$c;->b:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
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
