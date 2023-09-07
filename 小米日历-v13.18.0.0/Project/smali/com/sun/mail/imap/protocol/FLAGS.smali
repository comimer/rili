.class public Lcom/sun/mail/imap/protocol/FLAGS;
.super Ljavax/mail/Flags;
.source "FLAGS.java"

# interfaces
.implements Lcom/sun/mail/imap/protocol/h;


# static fields
.field static final name:[C

.field private static final serialVersionUID:J = 0x617d1827c5428feL


# instance fields
.field public msgno:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [C

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C

    .line 8
    .line 9
    return-void

    .line 10
    nop

    .line 11
    :array_0
    .array-data 2
        0x46s
        0x4cs
        0x41s
        0x47s
        0x53s
    .end array-data
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

.method public constructor <init>(Lcom/sun/mail/imap/protocol/f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljavax/mail/Flags;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/f;->i()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Lcom/sun/mail/imap/protocol/FLAGS;->msgno:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/sun/mail/iap/c;->g()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/f;->j()[Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_c

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    move v1, v0

    .line 21
    :goto_0
    array-length v2, p1

    .line 22
    if-ge v1, v2, :cond_c

    .line 23
    .line 24
    aget-object v2, p1, v1

    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x2

    .line 31
    if-lt v3, v4, :cond_a

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/16 v5, 0x5c

    .line 38
    .line 39
    if-ne v3, v5, :cond_a

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const/16 v5, 0x2a

    .line 51
    .line 52
    if-eq v3, v5, :cond_9

    .line 53
    .line 54
    const/16 v5, 0x41

    .line 55
    .line 56
    if-eq v3, v5, :cond_8

    .line 57
    .line 58
    const/16 v5, 0x44

    .line 59
    .line 60
    const/16 v6, 0x52

    .line 61
    .line 62
    if-eq v3, v5, :cond_3

    .line 63
    .line 64
    const/16 v4, 0x46

    .line 65
    .line 66
    if-eq v3, v4, :cond_2

    .line 67
    .line 68
    if-eq v3, v6, :cond_1

    .line 69
    .line 70
    const/16 v4, 0x53

    .line 71
    .line 72
    if-eq v3, v4, :cond_0

    .line 73
    .line 74
    invoke-virtual {p0, v2}, Ljavax/mail/Flags;->add(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_0
    sget-object v2, Ljavax/mail/Flags$a;->g:Ljavax/mail/Flags$a;

    .line 79
    .line 80
    invoke-virtual {p0, v2}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$a;)V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_1
    sget-object v2, Ljavax/mail/Flags$a;->f:Ljavax/mail/Flags$a;

    .line 85
    .line 86
    invoke-virtual {p0, v2}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$a;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    sget-object v2, Ljavax/mail/Flags$a;->e:Ljavax/mail/Flags$a;

    .line 91
    .line 92
    invoke-virtual {p0, v2}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$a;)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    const/4 v5, 0x3

    .line 101
    if-lt v3, v5, :cond_7

    .line 102
    .line 103
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    const/16 v3, 0x65

    .line 108
    .line 109
    if-eq v2, v3, :cond_6

    .line 110
    .line 111
    const/16 v3, 0x45

    .line 112
    .line 113
    if-ne v2, v3, :cond_4

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    const/16 v3, 0x72

    .line 117
    .line 118
    if-eq v2, v3, :cond_5

    .line 119
    .line 120
    if-ne v2, v6, :cond_b

    .line 121
    .line 122
    :cond_5
    sget-object v2, Ljavax/mail/Flags$a;->d:Ljavax/mail/Flags$a;

    .line 123
    .line 124
    invoke-virtual {p0, v2}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$a;)V

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_6
    :goto_1
    sget-object v2, Ljavax/mail/Flags$a;->c:Ljavax/mail/Flags$a;

    .line 129
    .line 130
    invoke-virtual {p0, v2}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$a;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_7
    invoke-virtual {p0, v2}, Ljavax/mail/Flags;->add(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_8
    sget-object v2, Ljavax/mail/Flags$a;->b:Ljavax/mail/Flags$a;

    .line 139
    .line 140
    invoke-virtual {p0, v2}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$a;)V

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_9
    sget-object v2, Ljavax/mail/Flags$a;->h:Ljavax/mail/Flags$a;

    .line 145
    .line 146
    invoke-virtual {p0, v2}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$a;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_a
    invoke-virtual {p0, v2}, Ljavax/mail/Flags;->add(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_b
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_c
    return-void
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
