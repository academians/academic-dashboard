data = [
  { label: "A", value: 10 },
  { label: "AB", value: 8 },
  { label: "BA", value: 5 },
  { label: "B", value: 3 },
  { label: "BC", value: 1 },
  { label: "CB", value: 0 },
  { label: "C", value: 1 },
  { label: "CD", value: 0 },
  { label: "D", value: 0 },
  { label: "E", value: 0 },

]

send_event 'grade', { value: data }