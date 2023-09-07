.class Lcom/android/calendar/birthday/ContactBirthdayActivity$d$a;
.super Ljava/lang/Object;
.source "ContactBirthdayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/birthday/ContactBirthdayActivity$d;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/calendar/common/event/schema/BirthdayEvent;

.field final synthetic b:Lcom/android/calendar/birthday/ContactBirthdayActivity$d;


# direct methods
.method constructor <init>(Lcom/android/calendar/birthday/ContactBirthdayActivity$d;Lcom/android/calendar/common/event/schema/BirthdayEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$d$a;->b:Lcom/android/calendar/birthday/ContactBirthdayActivity$d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$d$a;->a:Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
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


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$d$a;->b:Lcom/android/calendar/birthday/ContactBirthdayActivity$d;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/calendar/birthday/ContactBirthdayActivity$d;->b:Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->e(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object v0, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$d$a;->a:Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactKey()Landroid/util/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Boolean;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$d$a;->b:Lcom/android/calendar/birthday/ContactBirthdayActivity$d;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/calendar/birthday/ContactBirthdayActivity$d;->b:Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->d0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$e;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/android/calendar/birthday/ContactBirthdayActivity$e;->e(Lcom/android/calendar/birthday/ContactBirthdayActivity$e;)Ljava/util/HashMap;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$d$a;->a:Lcom/android/calendar/common/event/schema/BirthdayEvent;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/android/calendar/common/event/schema/BirthdayEvent;->getContactKey()Landroid/util/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    xor-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$d$a;->b:Lcom/android/calendar/birthday/ContactBirthdayActivity$d;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/android/calendar/birthday/ContactBirthdayActivity$d;->b:Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->b0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/android/calendar/birthday/ContactBirthdayActivity$d$a;->b:Lcom/android/calendar/birthday/ContactBirthdayActivity$d;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/android/calendar/birthday/ContactBirthdayActivity$d;->b:Lcom/android/calendar/birthday/ContactBirthdayActivity;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/android/calendar/birthday/ContactBirthdayActivity;->c0(Lcom/android/calendar/birthday/ContactBirthdayActivity;)Lcom/android/calendar/birthday/ContactBirthdayActivity$d;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 84
    .line 85
    .line 86
    return-void
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
