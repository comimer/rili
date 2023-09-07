.class public final synthetic Lcom/android/calendar/homepage/g1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/calendar/homepage/h1$b;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/h1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/h1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/g1;->a:Lcom/android/calendar/homepage/h1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Calendar;)V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/homepage/g1;->a:Lcom/android/calendar/homepage/h1;

    invoke-virtual {v0, p1}, Lcom/android/calendar/homepage/h1;->j(Ljava/util/Calendar;)V

    return-void
.end method
