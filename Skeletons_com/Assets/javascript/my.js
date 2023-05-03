
export function showImage(imagePath, description) {
        var img = document.getElementById("imgItem");
    img.src = imagePath;
    img.alt = description;
    img.style.display = "block";
    var desc = document.getElementById("lblDescription");
    desc.innerText = description;
    desc.style.display = "block";
    }

export function hideImage() {
        var img = document.getElementById("imgItem");
    img.style.display = "none";
    var desc = document.getElementById("lblDescription");
    desc.style.display = "none";
    }
