.class public final synthetic Lcom/android/calendar/event/y0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lh4/c$d;


# instance fields
.field public final synthetic a:Lcom/android/calendar/common/event/schema/BirthdayEvent;

.field public final synthetic b:Lcom/android/calendar/event/z0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/common/event/schema/BirthdayEvent;Lcom/android/calendar/event/z0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/event/y0;->a:Lcom/android/calendar/common/event/schema/BirthdayEvent;

    iput-object p2, p0, Lcom/android/calendar/event/y0;->b:Lcom/android/calendar/event/z0;

    return-void
.end method


# virtual methods
.method public final a(Lh4/c;IZIIILjava/lang/String;)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/y0;->a:Lcom/android/calendar/common/event/schema/BirthdayEvent;

    iget-object v2, v0, Lcom/android/calendar/event/y0;->b:Lcom/android/calendar/event/z0;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lcom/android/calendar/event/z0;->f0(Lcom/android/calendar/common/event/schema/BirthdayEvent;Lcom/android/calendar/event/z0;Lh4/c;IZIIILjava/lang/String;)V

    return-void
.end method
