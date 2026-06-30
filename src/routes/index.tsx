import { createFileRoute } from "@tanstack/react-router";
import { useEffect } from "react";

export const Route = createFileRoute("/")({
  head: () => ({
    meta: [
      { title: "Ocean Link Vault" },
      { name: "description", content: "A shared cloud-backed vault for organizing, filtering and grouping links." },
    ],
  }),
  component: Index,
});

function Index() {
  useEffect(() => {
    window.location.replace("/vault.html");
  }, []);
  return (
    <div style={{ minHeight: "100vh", display: "flex", alignItems: "center", justifyContent: "center", fontFamily: "monospace", color: "#0f766e", background: "#ecfeff" }}>
      Loading Ocean Link Vault…
    </div>
  );
}
