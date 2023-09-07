.class public final synthetic Lcom/android/calendar/homepage/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/AllInOneActivity$h;

.field public final synthetic b:Lcom/android/calendar/homepage/AllInOneActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/AllInOneActivity$h;Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/a0;->a:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iput-object p2, p0, Lcom/android/calendar/homepage/a0;->b:Lcom/android/calendar/homepage/AllInOneActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/calendar/homepage/a0;->a:Lcom/android/calendar/homepage/AllInOneActivity$h;

    iget-object v1, p0, Lcom/android/calendar/homepage/a0;->b:Lcom/android/calendar/homepage/AllInOneActivity;

    invoke-static {v0, v1}, Lcom/android/calendar/homepage/AllInOneActivity$h;->a(Lcom/android/calendar/homepage/AllInOneActivity$h;Lcom/android/calendar/homepage/AllInOneActivity;)V

    return-void
.end method
