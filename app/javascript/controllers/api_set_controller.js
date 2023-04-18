async function logJsonData() {
    const response = await fetch("https://api.tcgdex.net/v2/en/sets");
    const jsonData = await response.json();
    console.log(jsonData);
}