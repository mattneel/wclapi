defmodule Wclapi.Web.WclController do
    use Wclapi.Web, :controller

    def loans(conn, %{"pid" => pid, "surname" => surname} = _params) do
        conn |> json Wcl.loans(pid, surname)
    end
end