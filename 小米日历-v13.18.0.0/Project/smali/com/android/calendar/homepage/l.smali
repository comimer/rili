.class public final synthetic Lcom/android/calendar/homepage/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/calendar/homepage/AllInOneActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/calendar/homepage/AllInOneActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/calendar/homepage/l;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/calendar/homepage/l;->a:Lcom/android/calendar/homepage/AllInOneActivity;

    invoke-static {v0}, Lcom/android/calendar/homepage/AllInOneActivity;->g0(Lcom/android/calendar/homepage/AllInOneActivity;)V

    return-void
.end method
